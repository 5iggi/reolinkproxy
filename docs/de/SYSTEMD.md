<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Systemd-Dienste</h1>
<p align="center"><img alt="systemd" src="https://img.shields.io/badge/systemd-service-blue.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="FEHLERBEHEBUNG.md">Fehlerbehebung</a></p>

---

## Dienste

| Dienst | Funktion |
|---|---|
| `reolinkproxy.service` | Hauptdienst für RTSP/ONVIF Proxy |
| `reolinkproxy-snapshot.service` | One-shot Dienst für Snapshot-Erzeugung |
| `reolinkproxy-snapshot.timer` | Timer für automatische Snapshots |

## Befehle

```bash
systemctl status reolinkproxy.service --no-pager
systemctl restart reolinkproxy.service
systemctl status reolinkproxy-snapshot.timer --no-pager
systemctl list-timers --all | grep reolinkproxy
```

## Hinweis zu One-shot Diensten

`reolinkproxy-snapshot.service` ist ein One-shot Dienst. Nach erfolgreicher Ausführung steht der Dienst normalerweise auf `inactive (dead)`. Das ist kein Fehler.

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
