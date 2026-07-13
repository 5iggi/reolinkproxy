<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## MQTT and UDP

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## MQTT

MQTT is the preferred channel for status values.

```text
reolinkproxy/<camera>/status/motion
reolinkproxy/<camera>/status/snapshot_ok
reolinkproxy/<camera>/status/snapshot_size
reolinkproxy/<camera>/status/snapshot_ts
```

Subscriptions can be updated with:

```bash
python3 /opt/loxberry/bin/plugins/reolinkproxy/mqtt_subscriptions_update.py
```

## UDP Legacy / Debug

UDP is optional and intended for existing installations or tests.

```text
reolinkproxy.<camera>.<event>=<value>
```


---

[Back](README.md)
