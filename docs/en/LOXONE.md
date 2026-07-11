<p align="center">
  <img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80">
</p>

<h1 align="center">Loxone Config Export</h1>

<p align="center">
  <a href="README.md">Start</a> · <a href="STATUS_VALUES.md">Status Values</a> · <a href="ENDPOINTS.md">Endpoints</a>
</p>

---

## Export files

The Loxone export creates:

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

## Trigger a snapshot from Loxone

Starting with version 0.5.3, snapshots are triggered externally. Loxone calls the snapshot endpoint:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<camera>
```

The generated image file is then available at:

```text
/plugins/reolinkproxy/snapshots/<camera>.jpg
```

## Why external triggering?

Battery cameras are not woken up unnecessarily by a timer. Loxone decides when a snapshot is useful, for example on doorbell events, motion, alarm or when the visualization is opened.

---

<p align="center"><a href="README.md">Back</a></p>
