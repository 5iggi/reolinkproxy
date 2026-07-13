<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Development and Release

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Update binaries

```bash
sha256sum binaries/reolinkproxy-linux-amd64 > binaries/reolinkproxy-linux-amd64.sha256
sha256sum binaries/reolinkproxy-linux-arm64 > binaries/reolinkproxy-linux-arm64.sha256
sha256sum binaries/reolinkproxy-linux-armv7 > binaries/reolinkproxy-linux-armv7.sha256
```

## Release files

- `release.cfg`
- `prerelease.cfg`
- Plugin ZIP as GitHub release asset

## Test matrix

| Area | Test |
|---|---|
| Installation | Install plugin ZIP |
| Setup guard | Service stopped without camera |
| Language | German/English through LoxBerry and `lang=` |
| Binary | Check architecture and binary |
| Service | Start service with valid camera |
| Snapshot | `snapshot.cgi` creates JPEG |
| MQTT | Check topics and subscriptions |
| Loxone | Import export into Loxone Config |


---

[Back](README.md)
