<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Binaries und Architekturen</h1>
<p align="center"><img alt="amd64" src="https://img.shields.io/badge/amd64-unterstuetzt-green.svg"> <img alt="arm64" src="https://img.shields.io/badge/arm64-unterstuetzt-green.svg"> <img alt="armv7" src="https://img.shields.io/badge/armv7-unterstuetzt-green.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="INSTALLATION.md">Installation</a> · <a href="FEHLERBEHEBUNG.md">Fehlerbehebung</a></p>

---

## Binary-Quelle

```text
https://raw.githubusercontent.com/5iggi/reolinkproxy/main/binaries
```

## Zuordnung

| `uname -m` | Binary |
|---|---|
| `x86_64`, `amd64` | `reolinkproxy-linux-amd64` |
| `aarch64`, `arm64` | `reolinkproxy-linux-arm64` |
| `armv7l`, `armv6l`, `armhf`, `arm` | `reolinkproxy-linux-armv7` |

## Laufzeitpfad

```text
/opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Binary neu laden

```bash
sudo systemctl stop reolinkproxy.service
sudo rm -f /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
sudo /opt/loxberry/bin/plugins/reolinkproxy/install_binary.sh latest
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

Für `armv7l` darf keine `arm64/aarch64` Binary verwendet werden.

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
