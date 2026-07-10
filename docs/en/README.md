<p align="center"><img src="../../icons/icon_256.png" alt="Reolink Proxy Logo" width="120"></p>
<h1 align="center">Reolink Proxy · LoxBerry Plugin</h1>
<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-0.3.51-blue.svg">
  <img alt="LoxBerry" src="https://img.shields.io/badge/LoxBerry-v3%20%7C%20v4-green.svg">
  <img alt="Architectures" src="https://img.shields.io/badge/Arch-amd64%20%7C%20arm64%20%7C%20armv7-orange.svg">
  <img alt="Language" src="https://img.shields.io/badge/Language-English-blue.svg">
</p>
<p align="center">
  <a href="INSTALLATION.md">Installation</a> · <a href="CONFIGURATION.md">Configuration</a> · <a href="STRUCTURE.md">Structure</a> · <a href="STATUS_VALUES.md">Status values</a> · <a href="ENDPOINTS.md">Endpoints</a> · <a href="LOXONE.md">Loxone</a> · <a href="BINARIES.md">Binaries</a> · <a href="BATTERY_CAMERAS.md">Battery cameras</a> · <a href="SYSTEMD.md">Systemd</a> · <a href="TESTS.md">Tests</a> · <a href="DEVELOPMENT.md">Development</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a> · <a href="CHANGELOG.md">Changelog</a>
</p>

---

## Overview

**Reolink Proxy** is a native LoxBerry plugin to integrate Reolink Wi-Fi, UID and IP cameras without a Reolink Hub. The plugin installs and manages `reolinkproxy` as a systemd service, generates configuration from the WebUI and provides local RTSP/ONVIF endpoints, snapshots and Loxone Config templates.

## Features

- Native LoxBerry integration without Docker
- Supports Reolink UID and IP/Host cameras
- Local RTSP streams through `reolinkproxy`
- ONVIF endpoint through `reolinkproxy`
- WebUI for camera and proxy configuration
- LoxBerry v3/v4 compatible frontend
- Numeric status endpoint for Loxone
- Human-readable detail status for diagnostics
- Manual snapshot endpoint through local RTSP proxy and `ffmpeg`
- Battery-safe default values for automatic snapshots
- Loxone Config export for Virtual Inputs and Virtual Outputs
- Architecture-aware binary download for `amd64`, `arm64` and `armv7`

---

<p align="center"><a href="../README.md">Language selection</a> · <a href="../../README.md">Project README</a></p>
