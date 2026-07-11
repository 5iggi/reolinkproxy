<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">Configuration</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="LOXONE.md">Loxone</a> · <a href="ENDPOINTS.md">Endpoints</a>
</p>

---

## WebUI

```text
/admin/plugins/reolinkproxy/index.cgi
```

## Global settings

- **Advertise/IP**: LoxBerry IP address used for ONVIF and generated URLs.
- **RTSP**: local RTSP port, default `8554`.
- **ONVIF**: local ONVIF port, default `8002`.
- **ONVIF user / password**: credentials for the ONVIF endpoint.
- **Snapshot Timeout**: maximum runtime of `ffmpeg` when creating a manual snapshot.
- **Snapshot Quality**: JPEG quality for manual snapshots.

## Camera settings

- **Name**: local camera name, for example `argus4pro`.
- **UID**: Reolink UID.
- **Host/IP**: direct camera IP address or hostname.
- **User / Password**: camera credentials.
- **Streams**: usually `main,sub`.
- **Talk**: usually `sub`.

---

<p align="center"><a href="README.md">Back</a></p>
