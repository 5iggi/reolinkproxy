<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Loxone Config Export</h1>
<p align="center"><img alt="Loxone" src="https://img.shields.io/badge/Loxone-Virtual%20HTTP%20Input-blue.svg"> <img alt="Werte" src="https://img.shields.io/badge/Werte-numerisch-lightgrey.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="STATUSWERTE.md">Statuswerte</a> · <a href="ENDPUNKTE.md">Endpunkte</a></p>

---

## Exportdateien

```text
VI_ReolinkProxy.xml
VO_ReolinkProxy.xml
README_ReolinkProxy_Export.txt
ReolinkProxy_Loxone_Export.zip
```

Downloadpfad:

```text
/plugins/reolinkproxy/export/
```

## Status für Loxone

```text
/plugins/reolinkproxy/status.cgi?code
```

Alle Werte sind numerisch. Die genaue Bedeutung ist in [STATUSWERTE.md](STATUSWERTE.md) dokumentiert.

Der direkte Aufruf ohne Parameter liefert absichtlich:

```text
204 No Content
```

Lesbare Details:

```text
/plugins/reolinkproxy/status.cgi?detail
```

## Snapshot Refresh

`VO_ReolinkProxy.xml` enthält Befehle für manuelle Snapshots:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>
```

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
