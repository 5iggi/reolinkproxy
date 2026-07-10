<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Plugin Structure</h1>
<p align="center"><img alt="Structure" src="https://img.shields.io/badge/Structure-Files%20%26%20Functions-blue.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="DEVELOPMENT.md">Development</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a></p>

---

## Repository structure

| Path | Purpose |
|---|---|
| `plugin.cfg` | LoxBerry plugin metadata, version, AutoUpdate, description |
| `apt/packages.txt` | Package dependencies for LoxBerry |
| `bin/` | Executable scripts and Perl modules |
| `data/defaults/` | Default configuration for first installation |
| `templates/` | WebUI templates and language files |
| `webfrontend/htmlauth/` | Protected WebUI |
| `webfrontend/html/` | Public CGI endpoints, CSS, export and snapshots |
| `uninstall/` | Uninstall script |
| `binaries/` | GitHub binary storage for `amd64`, `arm64`, `armv7` |
| `docs/` | Documentation |

## Important files

| File | Purpose |
|---|---|
| `bin/install_binary.sh` | Downloads the matching `reolinkproxy` binary by architecture |
| `bin/ensure_binary.sh` | Verifies that a matching binary exists |
| `bin/reolinkproxy_service.sh` | systemd wrapper to start the proxy service |
| `bin/generate_env.pl` | Generates `reolinkproxy.env` from `settings.json` and `cameras.json` |
| `bin/export_loxone.pl` | Generates Loxone Config export files |
| `bin/snapshot_runner.pl` | Automatic snapshot creation via timer |
| `bin/repair_cameras.pl` | CLI repair helper for camera configuration |
| `bin/service_control.sh` | Start/stop/restart/status wrapper for the WebUI |
| `bin/RP.pm` | Shared Perl helper functions |
| `bin/detect_ip.sh` | Detects the local LoxBerry IP address |
| `webfrontend/htmlauth/index.cgi` | Protected WebUI logic |
| `webfrontend/html/status.cgi` | Public status endpoint |
| `webfrontend/html/snapshot.cgi` | Public snapshot endpoint |
| `webfrontend/html/css/reolinkproxy.css` | Plugin CSS |

---

<p align="center"><a href="README.md">Back to English home</a></p>
