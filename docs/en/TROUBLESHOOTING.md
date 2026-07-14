<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96">
</p>

## Troubleshooting

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---

## Logs

```text
/opt/loxberry/log/plugins/reolinkproxy/
```

Important logs:

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

## Service does not start

```bash
systemctl status reolinkproxy.service --no-pager
tail -n 120 /opt/loxberry/log/plugins/reolinkproxy/upgrade.log
tail -n 120 /opt/loxberry/log/plugins/reolinkproxy/generate_env.log
```

The service remains stopped without a valid camera.

## MQTT does not arrive at the Miniserver

```bash
grep -R "reolinkproxy/#" /opt/loxberry/config/system/subscriptions.json
sudo /opt/loxberry/bin/plugins/reolinkproxy/mqtt_gateway_control.sh reload
sudo /opt/loxberry/bin/plugins/reolinkproxy/mqtt_gateway_control.sh status
```

Expected:

```text
mqttgateway.pl count: 1
mqttfinder.pl count: 1
```

## UDP check

```bash
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/udp_send.pl system test 1
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/udp_send.pl garten snapshot_ok 1
```

If needed:

```bash
sudo tcpdump -ni any udp and host <MINISERVER_IP> and port 7001 -A
```

---

[Back](README.md)
---

<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="24" height="24"><br>
  <strong>Reolink Proxy</strong><br>
  Loxone · LoxBerry · Reolink Proxy
</p>

