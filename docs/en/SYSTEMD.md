<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Systemd Services</h1>
<p align="center"><img alt="systemd" src="https://img.shields.io/badge/systemd-service-blue.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a></p>

---

## Services

| Service | Purpose |
|---|---|
| `reolinkproxy.service` | Main RTSP/ONVIF proxy service |
| `reolinkproxy-snapshot.service` | One-shot snapshot service |
| `reolinkproxy-snapshot.timer` | Timer for automatic snapshots |

## Commands

```bash
systemctl status reolinkproxy.service --no-pager
systemctl restart reolinkproxy.service
systemctl status reolinkproxy-snapshot.timer --no-pager
systemctl list-timers --all | grep reolinkproxy
```

## One-shot note

`reolinkproxy-snapshot.service` is a one-shot service. After successful execution it normally shows `inactive (dead)`. That is not an error.

---

<p align="center"><a href="README.md">Back to English home</a></p>
