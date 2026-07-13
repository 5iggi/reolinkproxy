<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Plugin Structure and Files

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Installation files

| File | Function |
|---|---|
| `plugin.cfg` | LoxBerry plugin metadata |
| `apt/packages.txt` | Package dependencies |
| `postroot.sh` | Root tasks, systemd, rights, service |
| `preupgrade.sh` / `postupgrade.sh` | Upgrade backup and cleanup |

## Bin directory

| File | Function |
|---|---|
| `RP.pm` | Shared Perl utilities |
| `generate_env.pl` | Generates `reolinkproxy.env` |
| `export_loxone.pl` | Generates Loxone export files |
| `mqtt_subscriptions_update.py` | Updates MQTT subscriptions |
| `mqtt_publish.pl` | Publishes MQTT status |
| `udp_send.pl` | Sends UDP messages |
| `check_camera.pl` | Checks camera reachability |
| `ensure_binary.sh` | Verifies/installs binary |
| `reolinkproxy_service.sh` | Service wrapper |
| `service_control.sh` | Service control from WebUI |

## Web files

| File | Function |
|---|---|
| `webfrontend/htmlauth/*.cgi` | Protected WebUI |
| `webfrontend/html/status.cgi` | Status API |
| `webfrontend/html/snapshot.cgi` | Snapshot API |
| `webfrontend/html/event.cgi` | Event API |
| `webfrontend/html/css/reolinkproxy.css` | WebUI CSS |


---

[Back](README.md)
