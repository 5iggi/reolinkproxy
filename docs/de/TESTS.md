<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Test-Checkliste</h1>
<p align="center"><a href="README.md">Start</a> · <a href="FEHLERBEHEBUNG.md">Fehlerbehebung</a></p>

---

## Dienst prüfen

```bash
systemctl status reolinkproxy.service --no-pager
```

## Binary prüfen

```bash
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Status prüfen

```bash
curl -i http://<loxberry-ip>/plugins/reolinkproxy/status.cgi
curl http://<loxberry-ip>/plugins/reolinkproxy/status.cgi?code
curl http://<loxberry-ip>/plugins/reolinkproxy/status.cgi?detail
```

## Snapshot extern testen

```bash
curl "http://<loxberry-ip>/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>&debug=1"
ls -lh /opt/loxberry/webfrontend/html/plugins/reolinkproxy/snapshots/
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/snapshot.cgi.log
```

## Timer-Altlasten prüfen

```bash
systemctl list-timers --all | grep reolinkproxy
systemctl status reolinkproxy-snapshot.timer --no-pager
```

---

<p align="center"><a href="README.md">Zurück</a></p>
