# ReolinkProxy Binary Build Script

This helper builds the upstream `Shareed2k/reolinkproxy` project for the LoxBerry Reolink Proxy plugin binary loader.

## Output binaries

- `reolinkproxy-linux-amd64`
- `reolinkproxy-linux-arm64`
- `reolinkproxy-linux-armv7`

Each binary receives a matching `.sha256` file. The script also writes `build_manifest.txt` and `build_manifest.json`.

## Requirements

On a Debian/Ubuntu build host:

```bash
sudo apt-get update
sudo apt-get install -y git curl ca-certificates file zip coreutils build-essential golang-go
```

Alternatively run the script with:

```bash
sudo ./build_reolinkproxy_binaries.sh --install-deps
```

A newer Go toolchain from <https://go.dev/dl/> can be used if the distribution Go version is too old for the upstream `go.mod`.

## Usage

Build from upstream `main`:

```bash
./build_reolinkproxy_binaries.sh --ref main --out ./binaries
```

Install requirements and build from upstream `main`:

```bash
sudo ./build_reolinkproxy_binaries.sh \
  --install-deps \
  --ref main \
  --out ./binaries
```

Build a tag or commit:

```bash
./build_reolinkproxy_binaries.sh --ref v1.2.3 --out ./binaries
./build_reolinkproxy_binaries.sh --ref c3bcf1ac88396c86bd2b556f809caf248cfdaa1f --out ./binaries
```

Keep the work directory for debugging:

```bash
./build_reolinkproxy_binaries.sh --ref main --out ./binaries --no-clean
```

Skip upstream tests:

```bash
./build_reolinkproxy_binaries.sh --ref main --out ./binaries --skip-tests
```

## Publish to your plugin repository

After a successful build, copy these files to your repository's `binaries/` directory:

```bash
cp ./binaries/reolinkproxy-linux-amd64* ./your-repo/binaries/
cp ./binaries/reolinkproxy-linux-arm64* ./your-repo/binaries/
cp ./binaries/reolinkproxy-linux-armv7* ./your-repo/binaries/
cp ./binaries/build_manifest.* ./your-repo/binaries/
```

Then commit and push.
