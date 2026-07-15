#!/usr/bin/env bash
# build_reolinkproxy_binaries.sh
#
# Build tested LoxBerry plugin binaries from upstream Shareed2k/reolinkproxy.
# Output names are compatible with the ReolinkProxy LoxBerry plugin loader:
#   reolinkproxy-linux-amd64
#   reolinkproxy-linux-arm64
#   reolinkproxy-linux-armv7
#
# Requirements on Debian/Ubuntu/LoxBerry build hosts:
#   git, curl, ca-certificates, bash, file, zip, coreutils, go
# Optional:
#   --install-deps installs common Debian packages using apt-get.
#
# Notes:
#   - The build uses CGO_ENABLED=0 for portable static-ish Go binaries.
#   - The upstream package path is ./cmd/reolinkproxy.
#   - The script creates checksums and a build manifest.

set -eu

UPSTREAM_REPO="https://github.com/Shareed2k/reolinkproxy.git"
REF="main"
OUT_DIR="$(pwd)/binaries"
WORK_DIR=""
INSTALL_DEPS=0
RUN_TESTS=1
CLEAN=1
ZIP_OUTPUT=1

usage() {
  cat <<'USAGE'
Usage:
  ./build_reolinkproxy_binaries.sh [options]

Options:
  --repo URL          Upstream git repository.
                      Default: https://github.com/Shareed2k/reolinkproxy.git
  --ref REF           Branch, tag or commit to build. Default: main
  --out DIR           Output directory. Default: ./binaries
  --work DIR          Working directory. Default: temporary directory
  --install-deps      Install Debian/Ubuntu build dependencies using apt-get
  --skip-tests        Skip native 'go test ./...'
  --no-clean          Keep working directory after build
  --no-zip            Do not create binaries zip archive
  -h, --help          Show this help

Examples:
  ./build_reolinkproxy_binaries.sh --ref main --out ./binaries
  ./build_reolinkproxy_binaries.sh --ref v1.2.3 --out ./binaries
  ./build_reolinkproxy_binaries.sh --install-deps --ref main --out /tmp/reolinkproxy-binaries

Generated files:
  reolinkproxy-linux-amd64
  reolinkproxy-linux-arm64
  reolinkproxy-linux-armv7
  *.sha256
  build_manifest.txt
  build_manifest.json
  reolinkproxy-binaries-<ref>-<commit>.zip
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --repo) UPSTREAM_REPO="$2"; shift 2 ;;
    --ref) REF="$2"; shift 2 ;;
    --out) OUT_DIR="$2"; shift 2 ;;
    --work) WORK_DIR="$2"; shift 2 ;;
    --install-deps) INSTALL_DEPS=1; shift ;;
    --skip-tests) RUN_TESTS=0; shift ;;
    --no-clean) CLEAN=0; shift ;;
    --no-zip) ZIP_OUTPUT=0; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "ERROR: unknown option: $1" >&2; usage; exit 2 ;;
  esac
done

log() { printf '[%s] %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*"; }
fail() { echo "ERROR: $*" >&2; exit 1; }
need_cmd() { command -v "$1" >/dev/null 2>&1 || fail "Required command not found: $1"; }

if [ "$INSTALL_DEPS" -eq 1 ]; then
  log "Installing Debian/Ubuntu build dependencies"
  apt-get update
  apt-get install -y git curl ca-certificates file zip coreutils build-essential golang-go
fi

need_cmd git
need_cmd go
need_cmd file
need_cmd sha256sum
if [ "$ZIP_OUTPUT" -eq 1 ]; then need_cmd zip; fi

GO_VERSION="$(go version | awk '{print $3}')"
log "Using $GO_VERSION"

mkdir -p "$OUT_DIR"
OUT_DIR="$(cd "$OUT_DIR" && pwd)"

if [ -z "$WORK_DIR" ]; then
  WORK_DIR="$(mktemp -d /tmp/reolinkproxy-build.XXXXXX)"
else
  mkdir -p "$WORK_DIR"
  WORK_DIR="$(cd "$WORK_DIR" && pwd)"
fi

cleanup() {
  if [ "$CLEAN" -eq 1 ] && [ -n "$WORK_DIR" ] && [ -d "$WORK_DIR" ]; then
    rm -rf "$WORK_DIR"
  else
    log "Keeping work directory: $WORK_DIR"
  fi
}
trap cleanup EXIT

SRC_DIR="$WORK_DIR/src"
log "Cloning $UPSTREAM_REPO"
git clone "$UPSTREAM_REPO" "$SRC_DIR" >/dev/null 2>&1
cd "$SRC_DIR"

log "Checking out ref: $REF"
git checkout "$REF" >/dev/null 2>&1 || fail "Cannot checkout ref: $REF"
COMMIT="$(git rev-parse --short=12 HEAD)"
COMMIT_FULL="$(git rev-parse HEAD)"
DESCRIBE="$(git describe --tags --always --dirty 2>/dev/null || echo "$COMMIT")"
MODULE="$(go list -m 2>/dev/null || echo unknown)"
GO_MOD_VERSION="$(awk '/^go / {print $2}' go.mod 2>/dev/null || true)"

log "Upstream commit: $COMMIT_FULL"
log "Module: $MODULE"
log "go.mod Go version: ${GO_MOD_VERSION:-unknown}"

if [ "$RUN_TESTS" -eq 1 ]; then
  log "Running native tests: go test ./..."
  go test ./...
fi

# Build matrix: output_suffix:GOOS:GOARCH:GOARM
TARGETS='amd64:linux:amd64:
arm64:linux:arm64:
armv7:linux:arm:7'

rm -f "$OUT_DIR"/reolinkproxy-linux-* "$OUT_DIR"/*.sha256 "$OUT_DIR"/build_manifest.* 2>/dev/null || true

log "Building binaries into $OUT_DIR"
printf '%s\n' "$TARGETS" | while IFS=: read -r SUFFIX GOOS_VALUE GOARCH_VALUE GOARM_VALUE; do
  [ -n "$SUFFIX" ] || continue
  OUT="$OUT_DIR/reolinkproxy-linux-$SUFFIX"
  log "Building $OUT"
  if [ -n "$GOARM_VALUE" ]; then
    CGO_ENABLED=0 GOOS="$GOOS_VALUE" GOARCH="$GOARCH_VALUE" GOARM="$GOARM_VALUE" \
      go build -trimpath -ldflags "-s -w -buildid=" -o "$OUT" ./cmd/reolinkproxy
  else
    CGO_ENABLED=0 GOOS="$GOOS_VALUE" GOARCH="$GOARCH_VALUE" \
      go build -trimpath -ldflags "-s -w -buildid=" -o "$OUT" ./cmd/reolinkproxy
  fi
  chmod 755 "$OUT"
  file "$OUT"
  sha256sum "$OUT" > "$OUT.sha256"
done

MANIFEST_TXT="$OUT_DIR/build_manifest.txt"
MANIFEST_JSON="$OUT_DIR/build_manifest.json"
BUILD_DATE="$(date -u '+%Y-%m-%dT%H:%M:%SZ')"

cat > "$MANIFEST_TXT" <<EOF
ReolinkProxy binary build manifest
==================================
Build date UTC: $BUILD_DATE
Upstream repo:  $UPSTREAM_REPO
Ref:            $REF
Describe:       $DESCRIBE
Commit:         $COMMIT_FULL
Module:         $MODULE
Go toolchain:   $(go version)
go.mod Go:      ${GO_MOD_VERSION:-unknown}
CGO_ENABLED:    0
Package:        ./cmd/reolinkproxy

Targets:
EOF
for f in "$OUT_DIR"/reolinkproxy-linux-*; do
  case "$f" in *.sha256) continue ;; esac
  printf '  %s\n' "$(basename "$f")" >> "$MANIFEST_TXT"
  printf '    %s\n' "$(file -b "$f")" >> "$MANIFEST_TXT"
  printf '    %s\n' "$(cat "$f.sha256")" >> "$MANIFEST_TXT"
done

{
  printf '{\n'
  printf '  "build_date_utc": "%s",\n' "$BUILD_DATE"
  printf '  "upstream_repo": "%s",\n' "$UPSTREAM_REPO"
  printf '  "ref": "%s",\n' "$REF"
  printf '  "describe": "%s",\n' "$DESCRIBE"
  printf '  "commit": "%s",\n' "$COMMIT_FULL"
  printf '  "module": "%s",\n' "$MODULE"
  printf '  "go_version": "%s",\n' "$(go version | sed 's/"/\\"/g')"
  printf '  "go_mod_version": "%s",\n' "${GO_MOD_VERSION:-unknown}"
  printf '  "cgo_enabled": "0",\n'
  printf '  "package": "./cmd/reolinkproxy",\n'
  printf '  "binaries": [\n'
  first=1
  for f in "$OUT_DIR"/reolinkproxy-linux-*; do
    case "$f" in *.sha256) continue ;; esac
    name="$(basename "$f")"
    sha="$(awk '{print $1}' "$f.sha256")"
    info="$(file -b "$f" | sed 's/"/\\"/g')"
    if [ "$first" -eq 0 ]; then printf ',\n'; fi
    first=0
    printf '    {"name": "%s", "sha256": "%s", "file": "%s"}' "$name" "$sha" "$info"
  done
  printf '\n  ]\n'
  printf '}\n'
} > "$MANIFEST_JSON"

if [ "$ZIP_OUTPUT" -eq 1 ]; then
  SAFE_REF="$(printf '%s' "$REF" | tr '/:' '__')"
  ZIP_NAME="reolinkproxy-binaries-${SAFE_REF}-${COMMIT}.zip"
  log "Creating zip: $OUT_DIR/$ZIP_NAME"
  (cd "$OUT_DIR" && zip -q "$ZIP_NAME" \
    reolinkproxy-linux-amd64 reolinkproxy-linux-amd64.sha256 \
    reolinkproxy-linux-arm64 reolinkproxy-linux-arm64.sha256 \
    reolinkproxy-linux-armv7 reolinkproxy-linux-armv7.sha256 \
    build_manifest.txt build_manifest.json)
fi

log "Done. Output directory: $OUT_DIR"
ls -lh "$OUT_DIR"
