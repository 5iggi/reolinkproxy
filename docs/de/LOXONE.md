<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Loxone Config Export

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Export-Endpunkt

```text
/admin/plugins/reolinkproxy/export_loxone.cgi
```

Der Export wird beim Download frisch erzeugt. Dadurch werden aktuelle Kameras, Streams, IP-Adresse und MQTT-Topics verwendet.

## Dateien im ZIP

```text
VI_ReolinkProxy_HTTP.xml
VIU_ReolinkProxy_MQTT.xml
VIU_ReolinkProxy_UDP.xml
VO_ReolinkProxy_Combined.xml
README_DE.md
README_EN.md
```

## Aufteilung

- **VI HTTP**: HTTP Virtual Input für Statuswerte.
- **VIU MQTT**: UDP Virtual Input für MQTT-Gateway-Nachrichten.
- **VIU UDP**: UDP Virtual Input für UDP Legacy/Debug.
- **VO Combined**: zusammengefasster Virtual Output für Kamera-Kommandos.

## Typische Eingänge

```text
motion
snapshot_ok
snapshot_size
snapshot_ts
service active
```

## Typische Ausgänge

```text
<kamera> snapshot
```

Der Ausgang ruft den Snapshot-Endpunkt auf:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>
```


---

[Zurück](README.md)
