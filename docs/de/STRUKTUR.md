<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Plugin-Struktur</h1>
<p align="center"><a href="README.md">Start</a> · <a href="TESTS.md">Tests</a></p>

---

## Wichtige Dateien

| Datei | Funktion |
|---|---|
| `plugin.cfg` | Plugin-Metadaten für LoxBerry |
| `apt/packages.txt` | Debian-Paketabhängigkeiten |
| `bin/install_binary.sh` | Lädt das passende Proxy-Binary |
| `bin/ensure_binary.sh` | Prüft/installiert das passende Binary |
| `bin/reolinkproxy_service.sh` | Start-Wrapper für `reolinkproxy.service` |
| `bin/generate_env.pl` | Erzeugt `reolinkproxy.env` |
| `bin/export_loxone.pl` | Erzeugt Loxone Export-Dateien |
| `bin/service_control.sh` | Service-Steuerung aus dem WebUI |
| `bin/RP.pm` | Gemeinsame Perl-Hilfsfunktionen |
| `webfrontend/htmlauth/index.cgi` | Geschütztes WebUI |
| `webfrontend/html/status.cgi` | Öffentlicher Status-Endpunkt |
| `webfrontend/html/snapshot.cgi` | Externer/manueller Snapshot-Endpunkt |
| `webfrontend/html/css/reolinkproxy.css` | Plugin-CSS |

## Nicht mehr vorhanden ab 0.5.3

```text
bin/snapshot_runner.pl
reolinkproxy-snapshot.timer
reolinkproxy-snapshot.service
```

---

<p align="center"><a href="README.md">Zurück</a></p>
