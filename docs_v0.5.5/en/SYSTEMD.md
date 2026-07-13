<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">Systemd</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a>
</p>

---

## Active service

```text
reolinkproxy.service
```

## Commands

```bash
systemctl status reolinkproxy.service --no-pager
systemctl restart reolinkproxy.service
journalctl -u reolinkproxy.service -n 120 --no-pager
```

---

<p align="center"><a href="README.md">Back</a></p>
