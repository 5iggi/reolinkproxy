<p align="center"><img src="../../icons/icon_256.png" alt="Reolink Proxy Logo" width="120"></p>
<h1 align="center">Reolink Proxy · LoxBerry Plugin</h1>
<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-0.5.3-blue.svg">
  <img alt="LoxBerry" src="https://img.shields.io/badge/LoxBerry-v3%20%7C%20v4-green.svg">
  <img alt="Snapshots" src="https://img.shields.io/badge/Snapshots-extern%20ausgeloest-yellow.svg">
</p>
<p align="center">
  <a href="INSTALLATION.md">Installation</a> · <a href="KONFIGURATION.md">Konfiguration</a> · <a href="LOXONE.md">Loxone</a> · <a href="STATUSWERTE.md">Statuswerte</a> · <a href="ENDPUNKTE.md">Endpunkte</a> · <a href="STRUKTUR.md">Struktur</a> · <a href="BINARIES.md">Binaries</a> · <a href="SYSTEMD.md">Systemd</a> · <a href="TESTS.md">Tests</a> · <a href="FEHLERBEHEBUNG.md">Fehlerbehebung</a> 
</p>

---

## Überblick

**Reolink Proxy** ist ein natives LoxBerry Plugin zur Einbindung von Reolink WLAN-, UID- und IP-Kameras ohne Reolink Hub. Das Plugin verwaltet `reolinkproxy` als systemd-Dienst, erzeugt die Proxy-Konfiguration aus dem WebUI und stellt lokale RTSP-/ONVIF-Endpunkte sowie Loxone Config Vorlagen bereit.

## Wichtig ab Version 0.5.3

Die interne Snapshot-Planung wurde entfernt. Snapshots werden nicht mehr über einen LoxBerry-internen Timer erstellt, sondern extern ausgelöst, z. B. durch Loxone:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>
```

Damit bleibt das Plugin akku-schonend und Loxone entscheidet selbst, wann ein Snapshot erzeugt wird.

## Funktionen

- Native LoxBerry-Integration ohne Docker
- Unterstützung für Reolink UID- und IP-/Host-Kameras
- Lokale RTSP-Streams über `reolinkproxy`
- ONVIF-Endpunkt über `reolinkproxy`
- WebUI für Kamera- und Proxy-Konfiguration
- Loxone Config Export
- Numerischer Status-Endpunkt für Loxone
- Manueller Snapshot-Endpunkt für externe Trigger
- Architekturabhängiger Binary-Download für `amd64`, `arm64` und `armv7`

---

<p align="center"><a href="../README.md">Sprachauswahl</a> · <a href="../../README.md">Projekt README</a></p>
