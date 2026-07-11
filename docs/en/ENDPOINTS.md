# HTTP Endpoints

| Endpoint | Purpose |
|---|---|
| `/admin/plugins/reolinkproxy/index.cgi` | Protected WebUI |
| `/plugins/reolinkproxy/status.cgi` | Intentionally returns `204 No Content` |
| `/plugins/reolinkproxy/status.cgi?code` | Numeric Loxone status |
| `/plugins/reolinkproxy/status.cgi?detail` | Human-readable debug status |
| `/plugins/reolinkproxy/status.cgi?all` | Code and detail combined |
| `/plugins/reolinkproxy/snapshot.cgi?camera=<name>` | External/manual snapshot trigger |
| `/plugins/reolinkproxy/snapshots/<name>.jpg` | Last snapshot file |
| `/plugins/reolinkproxy/export/ReolinkProxy_Loxone_Export.zip` | Loxone export ZIP |
