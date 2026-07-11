<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">Test Checklist</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a>
</p>

---

## Check service

```bash
systemctl status reolinkproxy.service --no-pager
```

## Check binary

```bash
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Check status

```bash
curl -i http://<loxberry-ip>/plugins/reolinkproxy/status.cgi
curl http://<loxberry-ip>/plugins/reolinkproxy/status.cgi?code
curl http://<loxberry-ip>/plugins/reolinkproxy/status.cgi?detail
```

## Test external snapshot

```bash
curl "http://<loxberry-ip>/plugins/reolinkproxy/snapshot.cgi?camera=<camera>&debug=1"
ls -lh /opt/loxberry/webfrontend/html/plugins/reolinkproxy/snapshots/
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/snapshot.cgi.log
```

## Check timer leftovers

```bash
systemctl list-timers --all | grep reolinkproxy
systemctl status reolinkproxy-snapshot.timer --no-pager
```

---

<p align="center"><a href="README.md">Back</a></p>
