<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## HTTP Endpoints and API

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Protected WebUI endpoints

| Endpoint | Function |
|---|---|
| `/admin/plugins/reolinkproxy/index.cgi` | Overview |
| `/admin/plugins/reolinkproxy/settings.cgi` | Settings |
| `/admin/plugins/reolinkproxy/cameras.cgi` | Cameras |
| `/admin/plugins/reolinkproxy/diagnostics.cgi` | Status/diagnostics |
| `/admin/plugins/reolinkproxy/logs.cgi` | Logs |
| `/admin/plugins/reolinkproxy/export_loxone.cgi` | Generate and download Loxone export |

## Public endpoints

| Endpoint | Function |
|---|---|
| `/plugins/reolinkproxy/status.cgi` | `204 No Content` without parameters |
| `/plugins/reolinkproxy/status.cgi?code` | Numeric status values |
| `/plugins/reolinkproxy/status.cgi?detail` | JSON detail status |
| `/plugins/reolinkproxy/status.cgi?all` | Code and detail combined |
| `/plugins/reolinkproxy/snapshot.cgi?camera=<camera>` | Trigger snapshot |
| `/plugins/reolinkproxy/snapshots/<camera>.jpg` | Last snapshot image |
| `/plugins/reolinkproxy/event.cgi?camera=<camera>&type=<event>&value=<value>` | Set event and optionally send UDP |


---

[Back](README.md)
