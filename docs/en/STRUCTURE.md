<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">Plugin Structure</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="TESTS.md">Tests</a>
</p>

---

## Important files

| File | Function |
|---|---|
| `plugin.cfg` | Plugin metadata for LoxBerry |
| `apt/packages.txt` | Debian package dependencies |
| `bin/install_binary.sh` | Downloads the matching proxy binary |
| `bin/ensure_binary.sh` | Checks/installs the matching binary |
| `bin/reolinkproxy_service.sh` | Start wrapper for `reolinkproxy.service` |
| `bin/generate_env.pl` | Creates `reolinkproxy.env` |
| `bin/export_loxone.pl` | Creates Loxone export files |
| `bin/service_control.sh` | Service control from the WebUI |
| `bin/RP.pm` | Shared Perl helper functions |
| `webfrontend/htmlauth/index.cgi` | Protected WebUI |
| `webfrontend/html/status.cgi` | Public status endpoint |
| `webfrontend/html/snapshot.cgi` | External/manual snapshot endpoint |
| `webfrontend/html/css/reolinkproxy.css` | Plugin CSS |

---

<p align="center"><a href="README.md">Back</a></p>
