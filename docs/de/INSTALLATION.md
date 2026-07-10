<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Installation</h1>
<p align="center"><img alt="LoxBerry" src="https://img.shields.io/badge/LoxBerry-v3%20%7C%20v4-green.svg"> <img alt="Version" src="https://img.shields.io/badge/version-0.3.51-blue.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="KONFIGURATION.md">Konfiguration</a> · <a href="FEHLERBEHEBUNG.md">Fehlerbehebung</a></p>

---

## Voraussetzungen

- LoxBerry v3 oder v4
- Internetzugriff während der Installation für den Binary-Download
- `ffmpeg` für Snapshots
- `curl`, `unzip`, `zip`, `sudo`, `file`
- Perl/CGI/HTML::Template Module für das WebUI

## Installation über LoxBerry

1. Plugin-ZIP aus dem GitHub Release herunterladen.
2. In LoxBerry die Plugin-Verwaltung öffnen.
3. ZIP-Datei hochladen und installieren.
4. WebUI öffnen:

```text
/admin/plugins/reolinkproxy/index.cgi
```

5. Kamera eintragen und speichern.

## Nach der Installation prüfen

```bash
systemctl status reolinkproxy.service --no-pager
systemctl status reolinkproxy-snapshot.timer --no-pager
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Frische Installation vs. Upgrade

Bei einem echten Upgrade werden `settings.json` und `cameras.json` gesichert und wiederhergestellt. Bei einer frischen Installation sollen alte externe Upgrade-Backups nicht automatisch zurückgespielt werden.

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
