# Test checklist

```bash
systemctl status reolinkproxy.service --no-pager
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
curl http://<loxberry-ip>/plugins/reolinkproxy/status.cgi?code
curl "http://<loxberry-ip>/plugins/reolinkproxy/snapshot.cgi?camera=<camera>&debug=1"
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/snapshot.cgi.log
```
