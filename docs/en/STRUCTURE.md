# Plugin Structure

## Important files

| File | Purpose |
|---|---|
| `plugin.cfg` | LoxBerry plugin metadata |
| `apt/packages.txt` | Debian dependencies |
| `bin/install_binary.sh` | Downloads the matching proxy binary |
| `bin/ensure_binary.sh` | Verifies/installs the matching binary |
| `bin/reolinkproxy_service.sh` | Start wrapper for `reolinkproxy.service` |
| `bin/generate_env.pl` | Generates `reolinkproxy.env` |
| `bin/export_loxone.pl` | Generates Loxone export files |
| `bin/service_control.sh` | Service control from WebUI |
| `webfrontend/htmlauth/index.cgi` | Protected WebUI |
| `webfrontend/html/status.cgi` | Public status endpoint |
| `webfrontend/html/snapshot.cgi` | External/manual snapshot endpoint |
| `webfrontend/html/css/reolinkproxy.css` | Plugin CSS |

## Removed from 0.5.3

```text
bin/snapshot_runner.pl
reolinkproxy-snapshot.timer
reolinkproxy-snapshot.service
```
