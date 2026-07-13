<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## HTTP-Endpunkte und API

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Geschützte WebUI-Endpunkte

| Endpunkt | Funktion |
|---|---|
| `/admin/plugins/reolinkproxy/index.cgi` | Übersicht |
| `/admin/plugins/reolinkproxy/settings.cgi` | Einstellungen |
| `/admin/plugins/reolinkproxy/cameras.cgi` | Kameras |
| `/admin/plugins/reolinkproxy/diagnostics.cgi` | Status/Diagnose |
| `/admin/plugins/reolinkproxy/logs.cgi` | Logs |
| `/admin/plugins/reolinkproxy/export_loxone.cgi` | Loxone Export erzeugen und herunterladen |

## Öffentliche Endpunkte

| Endpunkt | Funktion |
|---|---|
| `/plugins/reolinkproxy/status.cgi` | `204 No Content` ohne Parameter |
| `/plugins/reolinkproxy/status.cgi?code` | Numerische Statuswerte |
| `/plugins/reolinkproxy/status.cgi?detail` | JSON-Detailstatus |
| `/plugins/reolinkproxy/status.cgi?all` | Code und Detail kombiniert |
| `/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>` | Snapshot auslösen |
| `/plugins/reolinkproxy/snapshots/<kamera>.jpg` | Letztes Snapshot-Bild |
| `/plugins/reolinkproxy/event.cgi?camera=<kamera>&type=<event>&value=<wert>` | Event setzen und optional UDP senden |

## Snapshot API

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>&debug=1
```

Antwort ist JSON mit Status, Snapshot-URL und optional Debug-Informationen.

## Event API

```text
/plugins/reolinkproxy/event.cgi?camera=<kamera>&type=motion&value=1
```

Events werden intern gespeichert und können per UDP ausgegeben werden.


---

[Zurück](README.md)
