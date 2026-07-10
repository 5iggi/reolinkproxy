<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Configuration</h1>
<p align="center"><img alt="WebUI" src="https://img.shields.io/badge/WebUI-LoxBerry-green.svg"> <img alt="Snapshots" src="https://img.shields.io/badge/Snapshots-battery%20safe-yellow.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="INSTALLATION.md">Installation</a> · <a href="STATUS_VALUES.md">Status values</a></p>

---

## WebUI

```text
/admin/plugins/reolinkproxy/index.cgi
```

## Global settings

- **Advertise/IP**: LoxBerry IP address for ONVIF and generated URLs.
- **RTSP**: local RTSP port, default `8554`.
- **ONVIF**: local ONVIF port, default `8002`.
- **ONVIF user / password**: credentials for the ONVIF endpoint.
- **Snapshots**: enables automatic snapshots. Disabled by default.
- **Interval**: snapshot interval. Use conservative values for battery cameras.

## Camera settings

- **Name**: local camera name, for example `argus4pro`.
- **UID**: Reolink UID. Recommended for battery/Argus cameras if no fixed IP is used.
- **Host/IP**: direct camera IP. If Host and UID are set, Host wins.
- **User / Password**: camera credentials.
- **Streams**: usually `main,sub`.
- **Talk**: usually `sub`.

---

<p align="center"><a href="README.md">Back to English home</a></p>
