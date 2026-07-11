<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Loxone Config Export</h1>
<p align="center"><a href="README.md">Start</a> · <a href="STATUSWERTE.md">Statuswerte</a> · <a href="ENDPUNKTE.md">Endpunkte</a></p>

---

## Exportdateien

Der Loxone Export erzeugt:

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

## Snapshot durch Loxone auslösen

Ab Version 0.5.3 wird ein Snapshot extern ausgelöst. Loxone ruft dazu den Snapshot-Endpoint auf:

```text
/plugins/reolinkproxy/snapshot.cgi?camera=<kamera>
```

Die erzeugte Bilddatei liegt danach unter:

```text
/plugins/reolinkproxy/snapshots/<kamera>.jpg
```

## Warum extern?

Akku-Kameras werden nicht unnötig durch einen Timer geweckt. Loxone entscheidet selbst, wann ein Snapshot sinnvoll ist, z. B. bei Klingel, Bewegung, Alarm oder Visualisierungsaufruf.

---

<p align="center"><a href="README.md">Zurück</a></p>
