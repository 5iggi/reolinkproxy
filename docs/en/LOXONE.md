<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Loxone Config Export

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Export endpoint

```text
/admin/plugins/reolinkproxy/export_loxone.cgi
```

The export is generated on download.

## ZIP content

```text
VI_ReolinkProxy_HTTP.xml
VIU_ReolinkProxy_MQTT.xml
VIU_ReolinkProxy_UDP.xml
VO_ReolinkProxy_Combined.xml
README_DE.md
README_EN.md
```

## Template separation

- **VI HTTP**: HTTP Virtual Input for status values.
- **VIU MQTT**: UDP Virtual Input for MQTT Gateway messages.
- **VIU UDP**: UDP Virtual Input for UDP legacy/debug.
- **VO Combined**: combined Virtual Output for camera commands.

Common output:

```text
<camera> snapshot
```

Snapshot endpoint:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<camera>
```


---

[Back](README.md)
