<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Loxone Config Export</h1>
<p align="center"><img alt="Loxone" src="https://img.shields.io/badge/Loxone-Virtual%20HTTP%20Input-blue.svg"> <img alt="Values" src="https://img.shields.io/badge/Values-numeric-lightgrey.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="STATUS_VALUES.md">Status values</a> · <a href="ENDPOINTS.md">Endpoints</a></p>

---

## Export files

```text
VI_ReolinkProxy.xml
VO_ReolinkProxy.xml
README_ReolinkProxy_Export.txt
ReolinkProxy_Loxone_Export.zip
```

Download path:

```text
/plugins/reolinkproxy/export/
```

## Status for Loxone

```text
/plugins/reolinkproxy/status.cgi?code
```

All values are numeric. The exact meaning is documented in [STATUS_VALUES.md](STATUS_VALUES.md).

A direct call without parameter intentionally returns:

```text
204 No Content
```

Human-readable details:

```text
/plugins/reolinkproxy/status.cgi?detail
```

## Snapshot Refresh

`VO_ReolinkProxy.xml` contains commands for manual snapshots:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<camera>
```

---

<p align="center"><a href="README.md">Back to English home</a></p>
