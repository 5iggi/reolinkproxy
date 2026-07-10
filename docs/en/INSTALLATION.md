<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Installation</h1>
<p align="center"><img alt="LoxBerry" src="https://img.shields.io/badge/LoxBerry-v3%20%7C%20v4-green.svg"> <img alt="Version" src="https://img.shields.io/badge/version-0.3.51-blue.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="CONFIGURATION.md">Configuration</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a></p>

---

## Requirements

- LoxBerry v3 or v4
- Internet access during installation for binary download
- `ffmpeg` for snapshots
- `curl`, `unzip`, `zip`, `sudo`, `file`
- Perl/CGI/HTML::Template modules for the WebUI

## Install through LoxBerry

1. Download the plugin ZIP from the GitHub release.
2. Open LoxBerry Plugin Management.
3. Upload and install the ZIP file.
4. Open the WebUI:

```text
/admin/plugins/reolinkproxy/index.cgi
```

5. Add a camera and save.

## Verify after installation

```bash
systemctl status reolinkproxy.service --no-pager
systemctl status reolinkproxy-snapshot.timer --no-pager
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

---

<p align="center"><a href="README.md">Back to English home</a></p>
