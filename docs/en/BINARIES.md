<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">Binaries</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a>
</p>

---

## Binary source

```text
https://raw.githubusercontent.com/5iggi/reolinkproxy/main/binaries
```

## Architecture mapping

| Architecture | Binary |
|---|---|
| `x86_64`, `amd64` | `reolinkproxy-linux-amd64` |
| `aarch64`, `arm64` | `reolinkproxy-linux-arm64` |
| `armv7l`, `armv6l`, `armhf`, `arm` | `reolinkproxy-linux-armv7` |

## Reload binary

```bash
sudo systemctl stop reolinkproxy.service
sudo rm -f /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
sudo /opt/loxberry/bin/plugins/reolinkproxy/install_binary.sh latest
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

---

<p align="center"><a href="README.md">Back</a></p>
