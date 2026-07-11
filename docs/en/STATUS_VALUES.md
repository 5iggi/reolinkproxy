# Status values

## Global values

| Status name | Value | Meaning |
|---|---:|---|
| `reolinkproxy_service_active` | `0/1` | Service inactive/active |
| `reolinkproxy_camera_count` | `0..n` | Number of valid configured cameras |
| `reolinkproxy_generated` | Unix time | Status generation timestamp |

## Camera values

| Status name | Value | Meaning |
|---|---:|---|
| `<camera>_configured` | `0/1` | Camera invalid/valid |
| `<camera>_online` | `0/1` | Proxy active and camera configured; not a direct camera ping |
| `<camera>_has_uid` | `0/1` | UID missing/present |
| `<camera>_has_host` | `0/1` | Host missing/present |
| `<camera>_snapshot_exists` | `0/1` | Snapshot file missing/present |
| `<camera>_snapshot_age` | `-1` or seconds | `-1` means no snapshot; otherwise age in seconds |
| `<camera>_rtsp_main` | `0/1` | Main RTSP URL can be derived |
| `<camera>_rtsp_sub` | `0/1` | Sub RTSP URL can be derived |

