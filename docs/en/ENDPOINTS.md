<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">HTTP Endpoints</h1>
<p align="center"><img alt="HTTP" src="https://img.shields.io/badge/HTTP-Endpoints-green.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="STATUS_VALUES.md">Status values</a> · <a href="LOXONE.md">Loxone</a></p>

---

| Endpoint | Purpose |
|---|---|
| `/admin/plugins/reolinkproxy/index.cgi` | Protected WebUI |
| `/plugins/reolinkproxy/status.cgi` | Intentionally returns `204 No Content` |
| `/plugins/reolinkproxy/status.cgi?code` | Numeric status for Loxone |
| `/plugins/reolinkproxy/status.cgi?detail` | Human-readable debug status |
| `/plugins/reolinkproxy/status.cgi?all` | Code and detail combined |
| `/plugins/reolinkproxy/snapshot.cgi?camera=<name>` | Manual snapshot |
| `/plugins/reolinkproxy/snapshots/<name>.jpg` | Current local snapshot file |
| `/plugins/reolinkproxy/export/ReolinkProxy_Loxone_Export.zip` | Loxone export ZIP |
| `/plugins/reolinkproxy/export/VI_ReolinkProxy.xml` | Virtual Input template |
| `/plugins/reolinkproxy/export/VO_ReolinkProxy.xml` | Virtual Output template |
| `/plugins/reolinkproxy/export/README_ReolinkProxy_Export.txt` | Export notes |

---

<p align="center"><a href="README.md">Back to English home</a></p>
