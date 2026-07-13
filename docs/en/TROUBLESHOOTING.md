<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

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
```

## Service does not start

```bash
systemctl status reolinkproxy.service --no-pager
tail -n 120 /opt/loxberry/log/plugins/reolinkproxy/upgrade.log
tail -n 120 /opt/loxberry/log/plugins/reolinkproxy/generate_env.log
```

The service remains stopped without a valid camera.

## Export problem

```bash
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/export_loxone.pl
```

The generated ZIP is written below:

```text
/tmp/reolinkproxy-loxone-export-*/ReolinkProxy_Loxone_Export.zip
```


---

[Back](README.md)
