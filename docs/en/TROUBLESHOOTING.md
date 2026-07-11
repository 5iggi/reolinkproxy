<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">Troubleshooting</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="TESTS.md">Tests</a>
</p>

---

## Logs

```text
/opt/loxberry/log/plugins/reolinkproxy/
```

Important logs:

```text
install_binary.log
binary.log
webui.log
generate_env.log
export_loxone.log
snapshot.cgi.log
reolinkproxy-wrapper.log
upgrade.log
```

## No snapshot image

Test the manual snapshot with debug output:

```bash
curl "http://<loxberry-ip>/plugins/reolinkproxy/snapshot.cgi?camera=<camera>&debug=1"
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/snapshot.cgi.log
```

---

<p align="center"><a href="README.md">Back</a></p>
