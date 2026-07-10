<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Fehlerbehebung</h1>
<p align="center"><img alt="Logs" src="https://img.shields.io/badge/Logs-LoxBerry-blue.svg"> <img alt="Debug" src="https://img.shields.io/badge/Debug-status.cgi%3Fdetail-yellow.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="SYSTEMD.md">Systemd</a> · <a href="TESTS.md">Tests</a></p>

---

## Dienst prüfen

```bash
systemctl status reolinkproxy.service --no-pager
journalctl -u reolinkproxy.service -n 120 --no-pager
```

## Binary prüfen

```bash
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Binary neu laden

```bash
sudo systemctl stop reolinkproxy.service
sudo rm -f /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
sudo /opt/loxberry/bin/plugins/reolinkproxy/install_binary.sh latest
sudo systemctl restart reolinkproxy.service
```

## Export-Rechte reparieren

```bash
sudo chown -R loxberry:loxberry /opt/loxberry/data/plugins/reolinkproxy
sudo chown -R loxberry:loxberry /opt/loxberry/webfrontend/html/plugins/reolinkproxy/export
sudo chmod 775 /opt/loxberry/data/plugins/reolinkproxy
sudo chmod 775 /opt/loxberry/webfrontend/html/plugins/reolinkproxy/export
sudo -u loxberry /opt/loxberry/bin/plugins/reolinkproxy/export_loxone.pl
```

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
snapshot.log
snapshot.cgi.log
reolinkproxy-wrapper.log
upgrade.log
```

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
