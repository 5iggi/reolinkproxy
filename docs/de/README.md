<p align="center"><img src="../../icons/icon_256.png" alt="Reolink Proxy Logo" width="120"></p>
<h1 align="center">Reolink Proxy · LoxBerry Plugin</h1>
<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-0.3.51-blue.svg">
  <img alt="LoxBerry" src="https://img.shields.io/badge/LoxBerry-v3%20%7C%20v4-green.svg">
  <img alt="Architekturen" src="https://img.shields.io/badge/Arch-amd64%20%7C%20arm64%20%7C%20armv7-orange.svg">
  <img alt="Sprache" src="https://img.shields.io/badge/Sprache-Deutsch-black.svg">
</p>
<p align="center">
  <a href="INSTALLATION.md">Installation</a> · <a href="KONFIGURATION.md">Konfiguration</a> · <a href="STRUKTUR.md">Struktur</a> · <a href="STATUSWERTE.md">Statuswerte</a> · <a href="ENDPUNKTE.md">Endpunkte</a> · <a href="LOXONE.md">Loxone</a> · <a href="BINARIES.md">Binaries</a> · <a href="AKKU_KAMERAS.md">Akku-Kameras</a> · <a href="SYSTEMD.md">Systemd</a> · <a href="TESTS.md">Tests</a> · <a href="ENTWICKLUNG.md">Entwicklung</a> · <a href="FEHLERBEHEBUNG.md">Fehlerbehebung</a> · <a href="CHANGELOG.md">Changelog</a>
</p>

---

## Überblick

**Reolink Proxy** ist ein natives LoxBerry Plugin zur Einbindung von Reolink WLAN-, UID- und IP-Kameras ohne Reolink Hub. Das Plugin installiert und verwaltet `reolinkproxy` als systemd-Dienst, erzeugt die Konfiguration aus der Weboberfläche und stellt lokale RTSP-/ONVIF-Endpunkte, Snapshots und Loxone-Config-Vorlagen bereit.

## Funktionen

- Native LoxBerry-Integration ohne Docker
- Unterstützung für Reolink UID- und IP-/Host-Kameras
- Lokale RTSP-Streams über `reolinkproxy`
- ONVIF-Endpunkt über `reolinkproxy`
- WebUI für Kamera- und Proxy-Konfiguration
- LoxBerry v3/v4-kompatibles Frontend
- Numerischer Status-Endpunkt für Loxone
- Lesbarer Detail-Status zur Diagnose
- Manueller Snapshot-Endpunkt über lokalen RTSP-Proxy und `ffmpeg`
- Akku-schonende Standardwerte für automatische Snapshots
- Loxone Config Export für Virtual Inputs und Virtual Outputs
- Architekturabhängiger Binary-Download für `amd64`, `arm64` und `armv7`

## Unterstützte Plattformen

| Plattform | Architektur | Binary |
|---|---:|---|
| LoxBerry auf Proxmox / VM | `x86_64` / `amd64` | `reolinkproxy-linux-amd64` |
| Raspberry Pi 64-bit | `aarch64` / `arm64` | `reolinkproxy-linux-arm64` |
| Raspberry Pi 32-bit / LoxBerry v3 | `armv7l` / `armhf` | `reolinkproxy-linux-armv7` |

---

<p align="center"><a href="../README.md">Sprachauswahl</a> · <a href="../../README.md">Projekt README</a></p>
