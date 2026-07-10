<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">HTTP-Endpunkte</h1>
<p align="center"><img alt="HTTP" src="https://img.shields.io/badge/HTTP-Endpunkte-green.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="STATUSWERTE.md">Statuswerte</a> · <a href="LOXONE.md">Loxone</a></p>

---

| Endpunkt | Funktion |
|---|---|
| `/admin/plugins/reolinkproxy/index.cgi` | Geschützte WebUI |
| `/plugins/reolinkproxy/status.cgi` | Absichtlich `204 No Content` |
| `/plugins/reolinkproxy/status.cgi?code` | Numerischer Status für Loxone |
| `/plugins/reolinkproxy/status.cgi?detail` | Lesbarer Status für Menschen/Debug |
| `/plugins/reolinkproxy/status.cgi?all` | Code und Detail zusammen |
| `/plugins/reolinkproxy/snapshot.cgi?camera=<name>` | Manueller Snapshot |
| `/plugins/reolinkproxy/snapshots/<name>.jpg` | Aktuelle lokale Snapshot-Datei |
| `/plugins/reolinkproxy/export/ReolinkProxy_Loxone_Export.zip` | Loxone Export ZIP |
| `/plugins/reolinkproxy/export/VI_ReolinkProxy.xml` | Virtual Input Vorlage |
| `/plugins/reolinkproxy/export/VO_ReolinkProxy.xml` | Virtual Output Vorlage |
| `/plugins/reolinkproxy/export/README_ReolinkProxy_Export.txt` | Export-Hinweise |

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
