<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Akku-Kameras</h1>
<p align="center"><img alt="Battery" src="https://img.shields.io/badge/Akku-schonend-green.svg"> <img alt="Snapshots" src="https://img.shields.io/badge/Snapshots-standard%20aus-yellow.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="KONFIGURATION.md">Konfiguration</a> · <a href="SYSTEMD.md">Systemd</a></p>

---

## Warum Akku-Schutz wichtig ist

Reolink Akku-/Argus-Kameras schlafen normalerweise und werden durch Live-View, RTSP oder Snapshots geweckt. Zu häufige Snapshot- oder Stream-Aufrufe können den Akku stark belasten.

## Empfohlene Werte

```json
{
  "snapshot_enabled": false,
  "battery_snapshot_interval": 900,
  "wired_snapshot_interval": 60,
  "snapshot_timeout": 60
}
```

## Empfehlung

- Automatische Snapshots für Akku-Kameras deaktiviert lassen.
- Manuelle Snapshots nur bei Bedarf nutzen.
- Loxone-Status über `status.cgi?code` verwenden, da dieser keine Kamera direkt aufweckt.
- RTSP-Streams nur bei Anzeige/Bedarf öffnen.

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
