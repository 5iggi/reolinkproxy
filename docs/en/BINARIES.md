<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Binaries

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Source

```text
https://raw.githubusercontent.com/5iggi/reolinkproxy/main/binaries
```

## Architecture mapping

| Architecture | Binary |
|---|---|
| `x86_64`, `amd64` | `reolinkproxy-linux-amd64` |
| `aarch64`, `arm64` | `reolinkproxy-linux-arm64` |
| `armv7l`, `armv6l`, `armhf`, `arm` | `reolinkproxy-linux-armv7` |

## Check and reload

```bash
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
sudo /opt/loxberry/bin/plugins/reolinkproxy/ensure_binary.sh
```


---

[Back](README.md)
