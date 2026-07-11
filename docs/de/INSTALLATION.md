<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Installation</h1>
<p align="center"><a href="README.md">Start</a> · <a href="KONFIGURATION.md">Konfiguration</a> · <a href="FEHLERBEHEBUNG.md">Fehlerbehebung</a></p>

---

## Voraussetzungen

- LoxBerry v3 oder v4
- Internetzugriff während der Installation für den Binary-Download
- `ffmpeg` für manuelle Snapshots
- `curl`, `unzip`, `zip`, `sudo`, `file`
- Perl/CGI/HTML::Template Module für das WebUI

## Installation

1. Plugin-ZIP aus dem GitHub Release herunterladen.
2. In LoxBerry die Plugin-Verwaltung öffnen.
3. ZIP-Datei hochladen und installieren.
4. WebUI öffnen:

```text
/admin/plugins/reolinkproxy/index.cgi
```

5. Kamera eintragen und speichern.
6. Loxone Export herunterladen und in Loxone Config importieren.

## Nach der Installation prüfen

```bash
systemctl status reolinkproxy.service --no-pager
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Hinweis zu Snapshots

Es gibt keinen internen Snapshot-Timer mehr. Wenn ein Snapshot benötigt wird, muss ein externer Client den Endpoint aufrufen:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>
```

---

<p align="center"><a href="README.md">Zurück</a></p>
