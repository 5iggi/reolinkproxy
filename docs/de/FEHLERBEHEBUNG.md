<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Fehlerbehebung

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Logs

```text
/opt/loxberry/log/plugins/reolinkproxy/
```

Wichtige Logs:

```text
install_binary.log
binary.log
webui.log
generate_env.log
export_loxone.log
snapshot.cgi.log
reolinkproxy-wrapper.log
upgrade.log
mqtt_publish.log
mqtt_subscriptions.log
```

## Dienst startet nicht

```bash
systemctl status reolinkproxy.service --no-pager
tail -n 120 /opt/loxberry/log/plugins/reolinkproxy/upgrade.log
tail -n 120 /opt/loxberry/log/plugins/reolinkproxy/generate_env.log
```

Der Dienst bleibt ohne gültige Kamera gestoppt.

## Kein Snapshot

```bash
curl "http://<LOXBERRY>/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>&debug=1"
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/snapshot.cgi.log
```

## Export-Problem

```bash
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/export_loxone.pl
```

Die erzeugte ZIP liegt temporär unter:

```text
/tmp/reolinkproxy-loxone-export-*/ReolinkProxy_Loxone_Export.zip
```


---

[Zurück](README.md)
