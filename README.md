<p align="center">
  <img src="docs/assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="128" height="128">
</p>

<h1 align="center">Reolink Proxy · LoxBerry Plugin</h1>

<p align="center">
  <img alt="LoxBerry" src="https://img.shields.io/badge/LoxBerry-v3%20/%20v4-4a7a12">
  <img alt="RTSP" src="https://img.shields.io/badge/RTSP-ONVIF-blue">
  <img alt="MQTT" src="https://img.shields.io/badge/MQTT-recommended-orange">
  <img alt="UDP" src="https://img.shields.io/badge/UDP-Legacy%20/%20Debug-lightgrey">
  <img alt="Loxone" src="https://img.shields.io/badge/Loxone-Config%20Export-informational">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-lightgrey">
</p>


Native Reolink Proxy Integration for LoxBerry  
RTSP/ONVIF · Snapshots · MQTT/UDP · Loxone Config Export · Reolink UID/IP Cameras

---

## Deutsch

**Reolink Proxy** ist ein LoxBerry Plugin zur lokalen Einbindung von Reolink Kameras. Der Schwerpunkt liegt auf **Reolink WLAN-Kameras, die ohne den sonst benötigten Reolink Hub** betrieben werden sollen. Das Plugin kann diese Kameras per Reolink UID über den zugrunde liegenden `reolinkproxy` anbinden und lokale RTSP-/ONVIF-Endpunkte bereitstellen. PoE- und klassische IP-Kameras können ebenfalls über Hostname oder IP-Adresse eingebunden werden.

Das Plugin ergänzt den nativen Proxy um LoxBerry-WebUI, Dienstverwaltung, Setup-Guard, MQTT-/UDP-Anbindung, Snapshot-Endpunkte und Loxone Config Vorlagen.

## English

**Reolink Proxy** is a LoxBerry plugin for local integration of Reolink cameras. It focuses on **Reolink Wi-Fi cameras that should be used without the otherwise required Reolink Hub**. The plugin can connect to these cameras through Reolink UID by using the underlying `reolinkproxy` and provides local RTSP/ONVIF endpoints. PoE and regular IP cameras can also be integrated via hostname or IP address.

The plugin adds LoxBerry WebUI, service management, setup guard, MQTT/UDP integration, snapshot endpoints and Loxone Config templates around the native proxy.

---

## Upstream / Quelle

This LoxBerry plugin is built around the upstream project **[Shareed2k/reolinkproxy](https://github.com/Shareed2k/reolinkproxy/)**:

```text
https://github.com/Shareed2k/reolinkproxy/
```

The upstream project provides the Go proxy that translates Reolink's Baichuan protocol into standard RTSP streams and a compliant ONVIF API. This plugin packages and manages that proxy for LoxBerry and Loxone use cases.

## Documentation

<p align="center">
  <a href="docs/README.md"><img alt="Hub" src="https://img.shields.io/badge/Docs-Hub-f59e0b?style=for-the-badge"></a>
  <a href="docs/de/README.md"><img alt="Deutsch" src="https://img.shields.io/badge/Docs-DE-1f6feb?style=for-the-badge"></a>
  <a href="docs/en/README.md"><img alt="English" src="https://img.shields.io/badge/Docs-EN-2ea043?style=for-the-badge"></a>
</p>

## License

MIT License

---

<p align="center">
  <img src="docs/assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="24" height="24"><br>
  <strong>Reolink Proxy</strong><br>
  Loxone · LoxBerry · Reolink Proxy
</p>

