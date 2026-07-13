<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Statuswerte

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Globale Werte

| Statusname | Wert | Bedeutung |
|---|---:|---|
| `reolinkproxy_service_active` | `0/1` | Dienst inaktiv/aktiv |
| `reolinkproxy_camera_count` | `0..n` | Anzahl gültiger Kameras |
| `reolinkproxy_generated` | Unix-Zeit | Zeitpunkt der Ausgabe |
| `reolinkproxy_udp_enabled` | `0/1` | UDP deaktiviert/aktiviert |

## Kamera-Werte

| Statusname | Wert | Bedeutung |
|---|---:|---|
| `<kamera>_configured` | `0/1` | Kamera ungültig/gültig |
| `<kamera>_online` | `0/1` | Proxy aktiv und Kamera gültig; kein echter Kamera-Ping |
| `<kamera>_has_uid` | `0/1` | UID vorhanden |
| `<kamera>_has_host` | `0/1` | Host/IP vorhanden |
| `<kamera>_snapshot_exists` | `0/1` | Snapshot-Datei vorhanden |
| `<kamera>_snapshot_age` | Sekunden oder `-1` | Alter des Snapshots |
| `<kamera>_rtsp_main` | `0/1` | Main-Stream ableitbar |
| `<kamera>_rtsp_sub` | `0/1` | Sub-Stream ableitbar |

## MQTT-Status

```text
reolinkproxy/<kamera>/status/motion
reolinkproxy/<kamera>/status/snapshot_ok
reolinkproxy/<kamera>/status/snapshot_size
reolinkproxy/<kamera>/status/snapshot_ts
```


---

[Zurück](README.md)
