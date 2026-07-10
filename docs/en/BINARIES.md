<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Binaries and Architectures</h1>
<p align="center"><img alt="amd64" src="https://img.shields.io/badge/amd64-supported-green.svg"> <img alt="arm64" src="https://img.shields.io/badge/arm64-supported-green.svg"> <img alt="armv7" src="https://img.shields.io/badge/armv7-supported-green.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="INSTALLATION.md">Installation</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a></p>

---

## Binary source

```text
https://raw.githubusercontent.com/5iggi/reolinkproxy/main/binaries
```

## Mapping

| `uname -m` | Binary |
|---|---|
| `x86_64`, `amd64` | `reolinkproxy-linux-amd64` |
| `aarch64`, `arm64` | `reolinkproxy-linux-arm64` |
| `armv7l`, `armv6l`, `armhf`, `arm` | `reolinkproxy-linux-armv7` |

## Runtime path

```text
/opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Reload binary

```bash
sudo systemctl stop reolinkproxy.service
sudo rm -f /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
sudo /opt/loxberry/bin/plugins/reolinkproxy/install_binary.sh latest
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

Do not use an `arm64/aarch64` binary on `armv7l` systems.

---

<p align="center"><a href="README.md">Back to English home</a></p>
