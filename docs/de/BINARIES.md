<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Binaries

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Quelle

```text
https://raw.githubusercontent.com/5iggi/reolinkproxy/main/binaries
```

## Architektur-Zuordnung

| Architektur | Binary |
|---|---|
| `x86_64`, `amd64` | `reolinkproxy-linux-amd64` |
| `aarch64`, `arm64` | `reolinkproxy-linux-arm64` |
| `armv7l`, `armv6l`, `armhf`, `arm` | `reolinkproxy-linux-armv7` |

## Prüfen und neu laden

```bash
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
sudo /opt/loxberry/bin/plugins/reolinkproxy/ensure_binary.sh
```

```bash
sudo systemctl stop reolinkproxy.service
sudo rm -f /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
sudo /opt/loxberry/bin/plugins/reolinkproxy/install_binary.sh latest
```


---

[Zurück](README.md)
