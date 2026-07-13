<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Systemd

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Service

```text
reolinkproxy.service
```

The service starts:

```text
/opt/loxberry/bin/plugins/reolinkproxy/reolinkproxy_service.sh
```

## Commands

```bash
systemctl status reolinkproxy.service --no-pager
systemctl restart reolinkproxy.service
systemctl stop reolinkproxy.service
journalctl -u reolinkproxy.service -n 120 --no-pager
```


---

[Back](README.md)
