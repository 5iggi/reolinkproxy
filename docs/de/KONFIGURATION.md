<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Konfiguration</h1>
<p align="center"><img alt="WebUI" src="https://img.shields.io/badge/WebUI-LoxBerry-green.svg"> <img alt="Snapshots" src="https://img.shields.io/badge/Snapshots-akku--schonend-yellow.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="INSTALLATION.md">Installation</a> · <a href="STATUSWERTE.md">Statuswerte</a></p>

---

## WebUI

```text
/admin/plugins/reolinkproxy/index.cgi
```

## Globale Einstellungen

- **Advertise/IP**: IP-Adresse des LoxBerry für ONVIF und generierte URLs.
- **RTSP**: Lokaler RTSP-Port, Standard `8554`.
- **ONVIF**: Lokaler ONVIF-Port, Standard `8002`.
- **ONVIF Benutzer / Passwort**: Zugangsdaten für den ONVIF-Endpunkt.
- **Snapshots**: Aktiviert automatische Snapshots. Standardmäßig deaktiviert.
- **Intervall**: Snapshot-Intervall. Für Akku-Kameras konservativ verwenden.

## Kameraeinstellungen

- **Name**: lokaler Kameraname, z. B. `argus4pro`.
- **UID**: Reolink UID. Für Akku-/Argus-Kameras empfohlen, wenn keine feste IP genutzt wird.
- **Host/IP**: direkte Kamera-IP. Wenn Host und UID gesetzt sind, gewinnt Host.
- **Benutzer / Passwort**: Kamera-Zugangsdaten.
- **Streams**: normalerweise `main,sub`.
- **Talk**: normalerweise `sub`.

## Generierte Umgebung

Nach dem Speichern wird erzeugt:

```text
/opt/loxberry/config/plugins/reolinkproxy/reolinkproxy.env
```

Wichtige Variablen:

```text
REOLINK_SERVER_RTSP_ADDRESS=:8554
REOLINK_SERVER_ONVIF_ADDRESS=:8002
REOLINK_CAMERA_0_NAME=<kamera>
REOLINK_CAMERA_0_UID=<uid>
REOLINK_CAMERA_0_RTSP_PATH=<kamera>/stream
```

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
