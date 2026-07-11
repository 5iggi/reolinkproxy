<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Statuswerte</h1>
<p align="center"><a href="README.md">Start</a> · <a href="LOXONE.md">Loxone</a></p>

---

## Globale Werte

| Statusname | Wert | Bedeutung |
|---|---:|---|
| `reolinkproxy_service_active` | `0` | Dienst ist nicht aktiv |
| `reolinkproxy_service_active` | `1` | Dienst ist aktiv |
| `reolinkproxy_camera_count` | `0..n` | Anzahl gültig konfigurierter Kameras |
| `reolinkproxy_generated` | Unix-Zeit | Zeitpunkt der Statusausgabe |

## Kamera-Werte

| Statusname | Wert | Bedeutung |
|---|---:|---|
| `<kamera>_configured` | `0/1` | Kamera ungültig/gültig konfiguriert |
| `<kamera>_online` | `0/1` | Proxy aktiv und Kamera konfiguriert; kein echter Kamera-Ping |
| `<kamera>_has_uid` | `0/1` | UID fehlt/vorhanden |
| `<kamera>_has_host` | `0/1` | Host/IP fehlt/vorhanden |
| `<kamera>_snapshot_exists` | `0/1` | Snapshot-Datei fehlt/vorhanden |
| `<kamera>_snapshot_age` | `-1` oder Sekunden | `-1` = kein Snapshot; sonst Alter in Sekunden |
| `<kamera>_rtsp_main` | `0/1` | Main-RTSP-URL ableitbar |
| `<kamera>_rtsp_sub` | `0/1` | Sub-RTSP-URL ableitbar |



Diese Werte wurden entfernt, weil keine interne Snapshot-Planung mehr existiert.

---

<p align="center"><a href="README.md">Zurück</a></p>
