<p align="center"><img src="../../icons/icon_256.png" alt="Reolink Proxy Logo" width="120"></p>
<h1 align="center">Reolink Proxy · LoxBerry Plugin</h1>
<p align="center"><img alt="Version" src="https://img.shields.io/badge/version-0.5.3-blue.svg"> <img alt="LoxBerry" src="https://img.shields.io/badge/LoxBerry-v3%20%7C%20v4-green.svg"> <img alt="Snapshots" src="https://img.shields.io/badge/Snapshots-external%20trigger-yellow.svg"></p>
<p align="center"><a href="INSTALLATION.md">Installation</a> · <a href="CONFIGURATION.md">Configuration</a> · <a href="LOXONE.md">Loxone</a> · <a href="STATUS_VALUES.md">Status values</a> · <a href="ENDPOINTS.md">Endpoints</a> · <a href="STRUCTURE.md">Structure</a> · <a href="BINARIES.md">Binaries</a> · <a href="SYSTEMD.md">Systemd</a> · <a href="TESTS.md">Tests</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a> · <a href="CHANGELOG.md">Changelog</a></p>

---

## Overview

**Reolink Proxy** is a native LoxBerry plugin for integrating Reolink Wi-Fi, UID and IP cameras without a Reolink Hub. The plugin manages `reolinkproxy` as a systemd service, generates proxy configuration from the WebUI and provides local RTSP/ONVIF endpoints and Loxone Config templates.

## Important from version 0.5.3

Internal snapshot scheduling has been removed. Snapshots are triggered externally, for example by Loxone:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<camera>
```

---

<p align="center"><a href="../README.md">Language selection</a> · <a href="../../README.md">Project README</a></p>
