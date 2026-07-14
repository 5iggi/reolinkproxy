<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96">
</p>

## MQTT und UDP

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---

## MQTT

MQTT ist der empfohlene Weg für produktive Kameraereignisse und Snapshot-Status. ReolinkProxy veröffentlicht Kameraereignisse wie Motion über MQTT. Das Plugin veröffentlicht zusätzlich Snapshot-Statuswerte über MQTT.

## MQTT-Subscriptions

Empfohlene LoxBerry MQTT-Subscription:

```text
reolinkproxy/#
```

Diese Wildcard-Subscription sorgt dafür, dass alle aktuellen und künftigen Topics unterhalb des Plugin-Basis-Topics an den Miniserver weitergeleitet werden.

Typische Topics:

```text
reolinkproxy/<kamera>/status/motion
reolinkproxy/<kamera>/status/snapshot_ok
reolinkproxy/<kamera>/status/snapshot_size
reolinkproxy/<kamera>/status/snapshot_ts
reolinkproxy/status
```

Im Loxone Monitor erscheinen MQTT-Gateway-Meldungen typischerweise als:

```text
MQTT: reolinkproxy/garten/status/motion=1
MQTT: reolinkproxy/garten/status/motion=0
MQTT: reolinkproxy/garten/status/snapshot_size=89422
```

## Akku-Hinweis bei Motion-MQTT

Bei Akku-Kameras kann die dauerhafte Nutzung von Motion-MQTT den Akku stärker belasten, da `reolinkproxy` die Kamera für die Ereigniserkennung aktiv beobachten muss.

Für Kameras mit `battery_camera=true` setzt das Plugin automatisch akku-schonende Lifecycle-Optionen. Diese reduzieren unnötige aktive Preview-Sessions, können aber je nach Kamera-Modell Einfluss auf die Reaktionszeit von Motion-MQTT haben.


## UDP Legacy / Debug

UDP ist optional und für Test, Debug und ältere Loxone-Setups vorgesehen. UDP sendet Plugin-eigene Meldungen, zum Beispiel:

```text
reolinkproxy.system.test=1
reolinkproxy.garten.snapshot_ok=1
```

ReolinkProxy-Motion-Events werden nicht per UDP erzeugt. Motion kommt produktiv über MQTT.

## Modus im Plugin

- **MQTT empfohlen**: MQTT ist der Hauptweg für Plugin-Meldungen und Kameraereignisse.
- **UDP Legacy / Debug**: UDP wird für Plugin-eigene Test-/Legacy-Meldungen genutzt.
- **MQTT + UDP Debug**: Plugin-Meldungen können über MQTT und UDP gesendet werden. Dieser Modus ist vor allem zur Diagnose gedacht.

## Tests

```bash
mosquitto_sub -h 127.0.0.1 -p 1883 -t 'reolinkproxy/#' -v -u loxberry -P 'PASSWORT'
```

```bash
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/udp_send.pl system test 1
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/udp_send.pl garten snapshot_ok 1
```

---

[Zurück](README.md)
---

<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="24" height="24"><br>
  <strong>Reolink Proxy</strong><br>
  Loxone · LoxBerry · Reolink Proxy
</p>

