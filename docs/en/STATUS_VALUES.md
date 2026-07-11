<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">Status Values</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="LOXONE.md">Loxone</a>
</p>

---

## Global values

| Status name | Value | Meaning |
|---|---:|---|
| `reolinkproxy_service_active` | `0` | Service is not active |
| `reolinkproxy_service_active` | `1` | Service is active |
| `reolinkproxy_camera_count` | `0..n` | Number of valid configured cameras |
| `reolinkproxy_generated` | Unix time | Time of status generation |

## Camera values

| Status name | Value | Meaning |
|---|---:|---|
| `<camera>_configured` | `0/1` | Camera is invalid/valid configured |
| `<camera>_online` | `0/1` | Proxy is active and camera is configured; this is not a direct camera ping |
| `<camera>_has_uid` | `0/1` | UID missing/present |
| `<camera>_has_host` | `0/1` | Host/IP missing/present |
| `<camera>_snapshot_exists` | `0/1` | Snapshot file missing/present |
| `<camera>_snapshot_age` | `-1` or seconds | `-1` = no snapshot; otherwise age in seconds |
| `<camera>_rtsp_main` | `0/1` | Main RTSP URL can be derived |
| `<camera>_rtsp_sub` | `0/1` | Sub RTSP URL can be derived |

These values were removed because internal snapshot scheduling no longer exists:

```text
reolinkproxy_snapshot_global_enabled
<camera>_snapshot_enabled
```

---

<p align="center"><a href="README.md">Back</a></p>
