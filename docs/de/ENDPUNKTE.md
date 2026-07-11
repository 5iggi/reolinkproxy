<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">HTTP-Endpunkte</h1>
<p align="center"><a href="README.md">Start</a> · <a href="LOXONE.md">Loxone</a></p>

---

| Endpunkt | Funktion |
|---|---|
| `/admin/plugins/reolinkproxy/index.cgi` | Geschützte WebUI |
| `/plugins/reolinkproxy/status.cgi` | Absichtlich `204 No Content` |
| `/plugins/reolinkproxy/status.cgi?code` | Numerischer Status für Loxone |
| `/plugins/reolinkproxy/status.cgi?detail` | Lesbarer Status für Debug |
| `/plugins/reolinkproxy/status.cgi?all` | Code und Detail zusammen |
| `/plugins/reolinkproxy/snapshot.cgi?camera=<name>` | Externer/manueller Snapshot-Trigger |
| `/plugins/reolinkproxy/snapshots/<name>.jpg` | Letzte Snapshot-Datei |
| `/plugins/reolinkproxy/export/ReolinkProxy_Loxone_Export.zip` | Loxone Export ZIP |

---

<p align="center"><a href="README.md">Zurück</a></p>
