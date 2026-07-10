<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Statuswerte: Code / Zahl → Bedeutung</h1>
<p align="center"><img alt="Loxone" src="https://img.shields.io/badge/Loxone-numerische%20Werte-blue.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="LOXONE.md">Loxone</a> · <a href="ENDPUNKTE.md">Endpunkte</a></p>

---

## Globale Werte

| Statusname | Wert | Bedeutung |
|---|---:|---|
| `reolinkproxy_service_active` | `0` | `reolinkproxy.service` ist nicht aktiv |
| `reolinkproxy_service_active` | `1` | `reolinkproxy.service` ist aktiv |
| `reolinkproxy_camera_count` | `0..n` | Anzahl gültig konfigurierter Kameras |
| `reolinkproxy_generated` | Unix-Zeit | Zeitpunkt der Statusausgabe |
| `reolinkproxy_snapshot_global_enabled` | `0` | Automatische Snapshots global deaktiviert |
| `reolinkproxy_snapshot_global_enabled` | `1` | Automatische Snapshots global aktiviert |

## Kamera-Werte

| Statusname | Wert | Bedeutung |
|---|---:|---|
| `<kamera>_configured` | `0` | Kamera ist nicht gültig konfiguriert |
| `<kamera>_configured` | `1` | Kamera hat UID oder Host/IP und gilt als konfiguriert |
| `<kamera>_online` | `0` | Proxy-Dienst ist nicht aktiv oder Kamera ist nicht konfiguriert |
| `<kamera>_online` | `1` | Proxy-Dienst ist aktiv und Kamera ist konfiguriert |
| `<kamera>_has_uid` | `0` | Keine UID hinterlegt |
| `<kamera>_has_uid` | `1` | UID hinterlegt |
| `<kamera>_has_host` | `0` | Kein Host/IP hinterlegt |
| `<kamera>_has_host` | `1` | Host/IP hinterlegt |
| `<kamera>_snapshot_enabled` | `0` | Automatische Snapshots für diese Kamera nicht aktiv |
| `<kamera>_snapshot_enabled` | `1` | Automatische Snapshots für diese Kamera aktiv |
| `<kamera>_snapshot_exists` | `0` | Keine lokale Snapshot-Datei vorhanden |
| `<kamera>_snapshot_exists` | `1` | Lokale Snapshot-Datei vorhanden |
| `<kamera>_snapshot_age` | `-1` | Keine Snapshot-Datei vorhanden |
| `<kamera>_snapshot_age` | `0..n` | Alter der Snapshot-Datei in Sekunden |
| `<kamera>_rtsp_main` | `0` | Main-RTSP-URL konnte nicht abgeleitet werden |
| `<kamera>_rtsp_main` | `1` | Main-RTSP-URL wurde aus der Konfiguration erzeugt |
| `<kamera>_rtsp_sub` | `0` | Sub-RTSP-URL konnte nicht abgeleitet werden |
| `<kamera>_rtsp_sub` | `1` | Sub-RTSP-URL wurde aus der Konfiguration erzeugt |

## Wichtig

`<kamera>_online = 1` ist kein echter Kamera-Ping. Der Wert bedeutet nur:

```text
reolinkproxy.service ist aktiv
UND
Kamera ist gültig konfiguriert
```

Das ist absichtlich akku-schonend und weckt Akku-Kameras nicht unnötig auf.

## Beispiel

```json
{
  "reolinkproxy_service_active": 1,
  "reolinkproxy_camera_count": 1,
  "reolinkproxy_snapshot_global_enabled": 0,
  "argus4pro_configured": 1,
  "argus4pro_online": 1,
  "argus4pro_has_uid": 1,
  "argus4pro_has_host": 0,
  "argus4pro_snapshot_enabled": 0,
  "argus4pro_snapshot_exists": 1,
  "argus4pro_snapshot_age": 245,
  "argus4pro_rtsp_main": 1,
  "argus4pro_rtsp_sub": 1
}
```

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
