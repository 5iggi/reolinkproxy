<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Status values: Code / Number → Meaning</h1>
<p align="center"><img alt="Loxone" src="https://img.shields.io/badge/Loxone-numeric%20values-blue.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="LOXONE.md">Loxone</a> · <a href="ENDPOINTS.md">Endpoints</a></p>

---

## Global values

| Status name | Value | Meaning |
|---|---:|---|
| `reolinkproxy_service_active` | `0` | `reolinkproxy.service` is not active |
| `reolinkproxy_service_active` | `1` | `reolinkproxy.service` is active |
| `reolinkproxy_camera_count` | `0..n` | Number of valid configured cameras |
| `reolinkproxy_generated` | Unix time | Time of status output |
| `reolinkproxy_snapshot_global_enabled` | `0` | Automatic snapshots globally disabled |
| `reolinkproxy_snapshot_global_enabled` | `1` | Automatic snapshots globally enabled |

## Camera values

| Status name | Value | Meaning |
|---|---:|---|
| `<camera>_configured` | `0` | Camera is not validly configured |
| `<camera>_configured` | `1` | Camera has UID or Host/IP and is considered configured |
| `<camera>_online` | `0` | Proxy service is not active or camera is not configured |
| `<camera>_online` | `1` | Proxy service is active and camera is configured |
| `<camera>_has_uid` | `0` | No UID configured |
| `<camera>_has_uid` | `1` | UID configured |
| `<camera>_has_host` | `0` | No Host/IP configured |
| `<camera>_has_host` | `1` | Host/IP configured |
| `<camera>_snapshot_enabled` | `0` | Automatic snapshots for this camera not active |
| `<camera>_snapshot_enabled` | `1` | Automatic snapshots for this camera active |
| `<camera>_snapshot_exists` | `0` | No local snapshot file exists |
| `<camera>_snapshot_exists` | `1` | Local snapshot file exists |
| `<camera>_snapshot_age` | `-1` | No snapshot file exists |
| `<camera>_snapshot_age` | `0..n` | Snapshot file age in seconds |
| `<camera>_rtsp_main` | `0` | Main RTSP URL could not be derived |
| `<camera>_rtsp_main` | `1` | Main RTSP URL was generated from configuration |
| `<camera>_rtsp_sub` | `0` | Sub RTSP URL could not be derived |
| `<camera>_rtsp_sub` | `1` | Sub RTSP URL was generated from configuration |

## Important

`<camera>_online = 1` is not a real camera ping. It only means:

```text
reolinkproxy.service is active
AND
the camera is validly configured
```

This is intentionally battery-safe and avoids waking battery cameras unnecessarily.

---

<p align="center"><a href="README.md">Back to English home</a></p>
