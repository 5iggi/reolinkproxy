<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Configuration

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## WebUI

```text
/admin/plugins/reolinkproxy/index.cgi
```

Main areas:

- Overview
- Cameras
- Settings
- Status
- Logs

## Settings

- **Advertise/IP**: LoxBerry IP for RTSP/ONVIF and generated URLs.
- **RTSP port**: default `8554`.
- **ONVIF port**: default `8002`.
- **ONVIF user/password**: local ONVIF credentials.
- **Snapshot timeout**: maximum `ffmpeg` runtime.
- **Snapshot quality**: JPEG quality.
- **MQTT broker/port/user/password/topic**: MQTT configuration.
- **UDP Legacy/Debug**: optional UDP output.


---

[Back](README.md)
