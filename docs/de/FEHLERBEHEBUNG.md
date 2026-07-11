<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Fehlerbehebung</h1>
<p align="center"><a href="README.md">Start</a> · <a href="TESTS.md">Tests</a></p>

---

## Logs

```text
/opt/loxberry/log/plugins/reolinkproxy/
```

Wichtige Logs:

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

## Kein Snapshot-Bild

Manuellen Snapshot mit Debug testen:

```bash
curl "http://<loxberry-ip>/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>&debug=1"
tail -n 80 /opt/loxberry/log/plugins/reolinkproxy/snapshot.cgi.log
```

## Altes Frontend sichtbar

Browser-Cache umgehen:

```text
/admin/plugins/reolinkproxy/index.cgi?nocache=0530
```

## Alte Snapshot-Timer entfernen

```bash
sudo systemctl disable --now reolinkproxy-snapshot.timer
sudo systemctl disable --now reolinkproxy-snapshot.service
sudo rm -f /etc/systemd/system/reolinkproxy-snapshot.timer
sudo rm -f /etc/systemd/system/reolinkproxy-snapshot.service
sudo systemctl daemon-reload
```

---

<p align="center"><a href="README.md">Zurück</a></p>
