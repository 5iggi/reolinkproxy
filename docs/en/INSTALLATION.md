<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Installation

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Requirements

- LoxBerry v3 or v4
- Internet access during installation for binary download
- `ffmpeg` for snapshots
- `curl`, `unzip`, `zip`, `sudo`, `file`
- Perl/CGI/HTML::Template for the WebUI

## Installation

1. Download the plugin ZIP.
2. Open LoxBerry Plugin Management.
3. Upload and install the ZIP file.
4. Open:

```text
/admin/plugins/reolinkproxy/index.cgi
```

5. Save settings.
6. Add cameras and save.
7. Check service status.
8. Export Loxone templates.

## Setup guard

The service remains stopped until configuration is complete.

```text
/admin/plugins/reolinkproxy/settings.cgi?setup=1
/admin/plugins/reolinkproxy/cameras.cgi?setup=1
```


---

[Back](README.md)
