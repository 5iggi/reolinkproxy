<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Test Checklist

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Service

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
curl "http://<LOXBERRY>/plugins/reolinkproxy/snapshot.cgi?camera=<camera>&debug=1"
```

## Export

```bash
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/export_loxone.pl
```


---

[Back](README.md)
