<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Troubleshooting</h1>
<p align="center"><img alt="Logs" src="https://img.shields.io/badge/Logs-LoxBerry-blue.svg"> <img alt="Debug" src="https://img.shields.io/badge/Debug-status.cgi%3Fdetail-yellow.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="SYSTEMD.md">Systemd</a> · <a href="TESTS.md">Tests</a></p>

---

## Check service

```bash
systemctl status reolinkproxy.service --no-pager
journalctl -u reolinkproxy.service -n 120 --no-pager
```

## Check binary

```bash
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Reload binary

```bash
sudo systemctl stop reolinkproxy.service
sudo rm -f /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
sudo /opt/loxberry/bin/plugins/reolinkproxy/install_binary.sh latest
sudo systemctl restart reolinkproxy.service
```

## Repair export permissions

```bash
sudo chown -R loxberry:loxberry /opt/loxberry/data/plugins/reolinkproxy
sudo chown -R loxberry:loxberry /opt/loxberry/webfrontend/html/plugins/reolinkproxy/export
sudo chmod 775 /opt/loxberry/data/plugins/reolinkproxy
sudo chmod 775 /opt/loxberry/webfrontend/html/plugins/reolinkproxy/export
sudo -u loxberry /opt/loxberry/bin/plugins/reolinkproxy/export_loxone.pl
```

---

<p align="center"><a href="README.md">Back to English home</a></p>
