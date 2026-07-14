<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96">
</p>

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
mqtt_gateway_control.log
```

## Dienst startet nicht

```bash
systemctl status reolinkproxy.service --no-pager
tail -n 120 /opt/loxberry/log/plugins/reolinkproxy/upgrade.log
tail -n 120 /opt/loxberry/log/plugins/reolinkproxy/generate_env.log
```

Der Dienst bleibt ohne gültige Kamera gestoppt.

## MQTT kommt nicht am Miniserver an

```bash
grep -R "reolinkproxy/#" /opt/loxberry/config/system/subscriptions.json
sudo /opt/loxberry/bin/plugins/reolinkproxy/mqtt_gateway_control.sh reload
sudo /opt/loxberry/bin/plugins/reolinkproxy/mqtt_gateway_control.sh status
```

Erwartung:

```text
mqttgateway.pl count: 1
mqttfinder.pl count: 1
```

## UDP prüfen

```bash
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/udp_send.pl system test 1
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/udp_send.pl garten snapshot_ok 1
```

Bei Bedarf:

```bash
sudo tcpdump -ni any udp and host <MINISERVER_IP> and port 7001 -A
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
---

<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="24" height="24"><br>
  <strong>Reolink Proxy</strong><br>
  Loxone · LoxBerry · Reolink Proxy
</p>

