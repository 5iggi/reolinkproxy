<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Konfiguration

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## WebUI

```text
/admin/plugins/reolinkproxy/index.cgi
```

Das WebUI nutzt die LoxBerry-Navigation und besteht aus:

- Übersicht
- Kameras
- Einstellungen
- Status
- Logs

## Einstellungen

### RTSP / ONVIF

- **Advertise/IP**: IP-Adresse des LoxBerry für RTSP/ONVIF und generierte URLs.
- **RTSP Port**: Standard `8554`.
- **ONVIF Port**: Standard `8002`.
- **ONVIF Benutzer / Passwort**: Zugangsdaten für den lokalen ONVIF-Endpunkt.

### Snapshot

- **Snapshot Timeout**: maximale Laufzeit von `ffmpeg`.
- **Snapshot Quality**: JPEG-Qualität für Snapshots.

### MQTT / Loxone

- **Modus**: MQTT, UDP oder beide.
- **Broker**: MQTT-Broker, häufig `127.0.0.1`.
- **Port**: Standard `1883`.
- **Topic**: Basis-Topic, Standard `reolinkproxy`.

### UDP Legacy / Debug

UDP ist optional und vor allem für bestehende Installationen oder Tests gedacht.


---

[Zurück](README.md)
