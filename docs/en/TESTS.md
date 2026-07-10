<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Test Checklist</h1>
<p align="center"><img alt="Tests" src="https://img.shields.io/badge/Tests-Checklist-green.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a></p>

---

## Test after installation or upgrade

```bash
systemctl status reolinkproxy.service --no-pager
systemctl status reolinkproxy-snapshot.timer --no-pager
```

## Binary test

```bash
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## WebUI save test

```bash
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/webui.log
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/generate_env.log
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/export_loxone.log
```

## Status test

```bash
curl -i http://<loxberry-ip>/plugins/reolinkproxy/status.cgi
curl http://<loxberry-ip>/plugins/reolinkproxy/status.cgi?code
curl http://<loxberry-ip>/plugins/reolinkproxy/status.cgi?detail
```

## Snapshot test

```bash
curl "http://<loxberry-ip>/plugins/reolinkproxy/snapshot.cgi?camera=<camera>&debug=1"
ls -lh /opt/loxberry/webfrontend/html/plugins/reolinkproxy/snapshots/
```

---

<p align="center"><a href="README.md">Back to English home</a></p>
