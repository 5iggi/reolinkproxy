<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Test-Checkliste</h1>
<p align="center"><img alt="Tests" src="https://img.shields.io/badge/Tests-Checkliste-green.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="FEHLERBEHEBUNG.md">Fehlerbehebung</a></p>

---

## Nach Installation oder Upgrade testen

```bash
systemctl status reolinkproxy.service --no-pager
systemctl status reolinkproxy-snapshot.timer --no-pager
```

## Binary-Test

```bash
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## WebUI speichern

Nach dem Speichern prüfen:

```bash
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/webui.log
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/generate_env.log
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/export_loxone.log
```

## Status testen

```bash
curl -i http://<loxberry-ip>/plugins/reolinkproxy/status.cgi
curl http://<loxberry-ip>/plugins/reolinkproxy/status.cgi?code
curl http://<loxberry-ip>/plugins/reolinkproxy/status.cgi?detail
```

## Snapshot testen

```bash
curl "http://<loxberry-ip>/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>&debug=1"
ls -lh /opt/loxberry/webfrontend/html/plugins/reolinkproxy/snapshots/
```

## Loxone Export testen

```bash
sudo -u loxberry /opt/loxberry/bin/plugins/reolinkproxy/export_loxone.pl
ls -lh /opt/loxberry/webfrontend/html/plugins/reolinkproxy/export/
```

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
