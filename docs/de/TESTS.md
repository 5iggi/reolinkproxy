<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Test-Checkliste

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Dienst

```bash
systemctl status reolinkproxy.service --no-pager
journalctl -u reolinkproxy.service -n 120 --no-pager
```

## Binary

```bash
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Status API

```bash
curl -i http://<LOXBERRY>/plugins/reolinkproxy/status.cgi
curl http://<LOXBERRY>/plugins/reolinkproxy/status.cgi?code
curl http://<LOXBERRY>/plugins/reolinkproxy/status.cgi?detail
curl http://<LOXBERRY>/plugins/reolinkproxy/status.cgi?all
```

## Snapshot

```bash
curl "http://<LOXBERRY>/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>&debug=1"
ls -lh /opt/loxberry/webfrontend/html/plugins/reolinkproxy/snapshots/
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/snapshot.cgi.log
```

## MQTT

```bash
cat /opt/loxberry/config/plugins/reolinkproxy/mqtt.json
python3 /opt/loxberry/bin/plugins/reolinkproxy/mqtt_subscriptions_update.py --dry-run
```

## Loxone Export

```bash
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/export_loxone.pl
```

```text
/admin/plugins/reolinkproxy/export_loxone.cgi
```


---

[Zurück](README.md)
