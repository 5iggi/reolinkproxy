<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">Installation</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="CONFIGURATION.md">Configuration</a> · <a href="TROUBLESHOOTING.md">Troubleshooting</a>
</p>

---

## Requirements

- LoxBerry v3 or v4
- Internet access during installation for binary download
- `ffmpeg` for manual snapshots
- `curl`, `unzip`, `zip`, `sudo`, `file`
- Perl/CGI/HTML::Template modules for the WebUI

## Installation

1. Download the plugin ZIP from the GitHub release.
2. Open LoxBerry Plugin Management.
3. Upload and install the ZIP file.
4. Open the WebUI:

```text
/admin/plugins/reolinkproxy/index.cgi
```

5. Add a camera and save.
6. Download the Loxone export and import it into Loxone Config.

## Verify after installation

```bash
systemctl status reolinkproxy.service --no-pager
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```

## Snapshot note

There is no internal snapshot timer anymore. If a snapshot is needed, an external client must call the endpoint:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<camera>
```

---

<p align="center"><a href="README.md">Back</a></p>
