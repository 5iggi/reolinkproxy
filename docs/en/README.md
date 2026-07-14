<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

<h1 align="center">Reolink Proxy · LoxBerry Plugin</h1>

<p align="center">
  <img alt="LoxBerry" src="https://img.shields.io/badge/LoxBerry-v3%20/%20v4-4a7a12">
  <img alt="RTSP" src="https://img.shields.io/badge/RTSP-ONVIF-blue">
  <img alt="MQTT" src="https://img.shields.io/badge/MQTT-UDP-orange">
  <img alt="Loxone" src="https://img.shields.io/badge/Loxone-Config%20Export-informational">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-lightgrey">
</p>

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Overview

**Reolink Proxy** is a native LoxBerry plugin for local integration of Reolink cameras. A central use case is using Reolink Wi-Fi cameras that would otherwise require a Reolink Hub. These cameras can be connected through Reolink UID and exposed locally as RTSP/ONVIF endpoints.

Reolink PoE and regular IP cameras can also be integrated directly through hostname or IP address. Configuration is maintained in the LoxBerry WebUI and translated into a `reolinkproxy` service environment.

## Features

- Native LoxBerry integration without Docker
- Reolink Wi-Fi/UID cameras without Reolink Hub
- Reolink PoE/IP cameras through Host/IP
- Local RTSP streams through `reolinkproxy`
- Local ONVIF endpoint and WS-Discovery through `reolinkproxy`
- WebUI with overview, cameras, settings, status and logs
- Setup guard: service remains stopped until setup is complete
- MQTT for motion and snapshot status
- Optional UDP legacy/debug output
- External snapshot endpoint for Loxone and other clients
- Loxone Config export with HTTP, MQTT and UDP templates
- Architecture-aware binary download for `amd64`, `arm64` and `armv7`
- German/English WebUI texts

## Foundation

The plugin is built around `Shareed2k/reolinkproxy`:

```text
https://github.com/Shareed2k/reolinkproxy/
```

The upstream proxy translates Reolink's Baichuan protocol into RTSP streams and ONVIF. This LoxBerry plugin adds installation, configuration, service management, Loxone export, MQTT/UDP and WebUI.


---

<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="24" height="24"><br>
  <strong>Reolink Proxy</strong><br>
  Loxone · LoxBerry · Reolink Proxy
</p>
