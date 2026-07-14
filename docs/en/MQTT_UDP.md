<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96">
</p>

## MQTT and UDP

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---

## MQTT

MQTT is the recommended path for production camera events and snapshot status. ReolinkProxy publishes camera events such as motion via MQTT. The plugin additionally publishes snapshot status values via MQTT.

Recommended LoxBerry MQTT subscription:

```text
reolinkproxy/#
```

This wildcard subscription forwards all current and future topics below the plugin base topic to the Miniserver.

Typical topics:

```text
reolinkproxy/<camera>/status/motion
reolinkproxy/<camera>/status/snapshot_ok
reolinkproxy/<camera>/status/snapshot_size
reolinkproxy/<camera>/status/snapshot_ts
reolinkproxy/status
```

## UDP Legacy / Debug

UDP is optional and intended for tests, debugging and legacy Loxone setups. UDP sends plugin-generated messages, for example:

```text
reolinkproxy.system.test=1
reolinkproxy.garten.snapshot_ok=1
```

ReolinkProxy motion events are not generated as UDP messages. Production motion events are sent via MQTT.

## Tests

```bash
mosquitto_sub -h 127.0.0.1 -p 1883 -t 'reolinkproxy/#' -v -u loxberry -P 'PASSWORD'
```

```bash
sudo -u loxberry /usr/bin/perl /opt/loxberry/bin/plugins/reolinkproxy/udp_send.pl system test 1
```

---

[Back](README.md)
---

<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="24" height="24"><br>
  <strong>Reolink Proxy</strong><br>
  Loxone · LoxBerry · Reolink Proxy
</p>

