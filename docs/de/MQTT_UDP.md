<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## MQTT und UDP

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## MQTT

MQTT ist der bevorzugte Weg für Statuswerte. Typische Topics:

```text
reolinkproxy/<kamera>/status/motion
reolinkproxy/<kamera>/status/snapshot_ok
reolinkproxy/<kamera>/status/snapshot_size
reolinkproxy/<kamera>/status/snapshot_ts
```

## MQTT-Subscriptions

Das Plugin kann passende Subscriptions für das LoxBerry MQTT Gateway erzeugen oder aktualisieren:

```bash
python3 /opt/loxberry/bin/plugins/reolinkproxy/mqtt_subscriptions_update.py
```

## MQTT Publish

Snapshot-Ergebnisse werden über `mqtt_publish.pl` veröffentlicht, wenn MQTT aktiv ist.

## UDP Legacy / Debug

UDP kann parallel oder alternativ eingesetzt werden. Typische Nachricht:

```text
reolinkproxy.<kamera>.<event>=<wert>
```

UDP ist optional und eignet sich für Legacy-Szenarien oder Tests.


---

[Zurück](README.md)
