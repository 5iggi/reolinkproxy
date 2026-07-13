<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Status Values

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Global values

| Status name | Value | Meaning |
|---|---:|---|
| `reolinkproxy_service_active` | `0/1` | Service inactive/active |
| `reolinkproxy_camera_count` | `0..n` | Number of valid cameras |
| `reolinkproxy_generated` | Unix time | Generation timestamp |
| `reolinkproxy_udp_enabled` | `0/1` | UDP disabled/enabled |

## Camera values

| Status name | Value | Meaning |
|---|---:|---|
| `<camera>_configured` | `0/1` | Camera invalid/valid |
| `<camera>_online` | `0/1` | Proxy active and camera valid; not a real camera ping |
| `<camera>_has_uid` | `0/1` | UID present |
| `<camera>_has_host` | `0/1` | Host/IP present |
| `<camera>_snapshot_exists` | `0/1` | Snapshot file exists |
| `<camera>_snapshot_age` | seconds or `-1` | Snapshot age |


---

[Back](README.md)
