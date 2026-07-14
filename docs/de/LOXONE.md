<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96">
</p>

## Loxone Config Export

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---

## Export-Endpunkt

```text
/admin/plugins/reolinkproxy/export_loxone.cgi
```

Der Export wird beim Download frisch erzeugt. Dadurch werden aktuelle Kameras, Streams, IP-Adresse, MQTT-Topics und UDP-Einstellungen verwendet.

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

VI HTTP, VIU MQTT und VIU UDP sind getrennt. VO ist zusammengefasst.

## MQTT

Für die LoxBerry MQTT-Subscription wird empfohlen:

```text
reolinkproxy/#
```

Die Loxone-Vorlagen enthalten konkrete Eingänge für einzelne Topics, zum Beispiel:

```text
reolinkproxy/garten/status/motion
reolinkproxy/garten/status/snapshot_ok
reolinkproxy/garten/status/snapshot_size
reolinkproxy/garten/status/snapshot_ts
```

## Bedeutung der Eingänge

- `motion`: Bewegungsstatus der Kamera.
- `snapshot_ok`: Ergebnis des letzten Snapshot-Versuchs.
- `snapshot_size`: Größe des Snapshot-Bildes in Bytes.
- `snapshot_ts`: Zeitstempel des Snapshot-Status.
- `service active`: Status des ReolinkProxy-Dienstes, sofern im HTTP-Status verfügbar.

## Bedeutung der Ausgänge

- `snapshot`: Fordert über ReolinkProxy einen Snapshot für die jeweilige Kamera an.

---

[Zurück](README.md)
---

<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="24" height="24"><br>
  <strong>Reolink Proxy</strong><br>
  Loxone · LoxBerry · Reolink Proxy
</p>

