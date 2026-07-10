<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Battery Cameras</h1>
<p align="center"><img alt="Battery" src="https://img.shields.io/badge/Battery-safe-green.svg"> <img alt="Snapshots" src="https://img.shields.io/badge/Snapshots-default%20off-yellow.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="CONFIGURATION.md">Configuration</a> · <a href="SYSTEMD.md">Systemd</a></p>

---

## Why battery protection matters

Reolink battery/Argus cameras normally sleep and are woken by live view, RTSP or snapshots. Frequent snapshot or stream requests can consume significant battery power.

## Recommended values

```json
{
  "snapshot_enabled": false,
  "battery_snapshot_interval": 900,
  "wired_snapshot_interval": 60,
  "snapshot_timeout": 60
}
```

## Recommendation

- Keep automatic snapshots disabled for battery cameras.
- Use manual snapshots only when needed.
- Use `status.cgi?code` for Loxone status because this does not directly wake the camera.
- Open RTSP streams only when viewing is required.

---

<p align="center"><a href="README.md">Back to English home</a></p>
