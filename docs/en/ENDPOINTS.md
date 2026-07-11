<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">HTTP Endpoints</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="LOXONE.md">Loxone</a>
</p>

---

| Endpoint | Function |
|---|---|
| `/admin/plugins/reolinkproxy/index.cgi` | Protected WebUI |
| `/plugins/reolinkproxy/status.cgi` | Intentionally returns `204 No Content` |
| `/plugins/reolinkproxy/status.cgi?code` | Numeric status for Loxone |
| `/plugins/reolinkproxy/status.cgi?detail` | Human-readable status for debugging |
| `/plugins/reolinkproxy/status.cgi?all` | Code and detail combined |
| `/plugins/reolinkproxy/snapshot.cgi?camera=<camera>` | External/manual snapshot trigger |
| `/plugins/reolinkproxy/snapshots/<camera>.jpg` | Last snapshot file |
| `/plugins/reolinkproxy/export/ReolinkProxy_Loxone_Export.zip` | Loxone export ZIP |

---

<p align="center"><a href="README.md">Back</a></p>
