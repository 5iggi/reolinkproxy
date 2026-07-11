# Installation

## Requirements

- LoxBerry v3 or v4
- Internet access during installation for binary download
- `ffmpeg` for manual snapshots
- `curl`, `unzip`, `zip`, `sudo`, `file`
- Perl/CGI/HTML::Template modules for the WebUI

## Install

1. Download the plugin ZIP from the GitHub release.
2. Open LoxBerry Plugin Management.
3. Upload and install the ZIP file.
4. Open `/admin/plugins/reolinkproxy/index.cgi`.
5. Add a camera and save.
6. Download and import the Loxone export.

## Snapshot note

There is no internal snapshot timer anymore. An external client calls:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<camera>
```
