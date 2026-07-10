<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Plugin-Struktur</h1>
<p align="center"><img alt="Structure" src="https://img.shields.io/badge/Struktur-Dateien%20%26%20Funktionen-blue.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="ENTWICKLUNG.md">Entwicklung</a> · <a href="FEHLERBEHEBUNG.md">Fehlerbehebung</a></p>

---

## Repository-Struktur

| Pfad | Funktion |
|---|---|
| `plugin.cfg` | LoxBerry Plugin-Metadaten, Version, AutoUpdate, Beschreibung |
| `apt/packages.txt` | Paketabhängigkeiten für LoxBerry |
| `bin/` | Ausführbare Skripte und Perl-Module |
| `data/defaults/` | Default-Konfiguration für Erstinstallation |
| `templates/` | WebUI-Templates und Sprachdateien |
| `webfrontend/htmlauth/` | Geschütztes WebUI |
| `webfrontend/html/` | Öffentliche CGI-Endpunkte, CSS, Export und Snapshots |
| `uninstall/` | Deinstallationsskript |
| `binaries/` | GitHub-Binary-Ablage für `amd64`, `arm64`, `armv7` |
| `docs/` | Dokumentation |

## Wichtige Dateien

| Datei | Funktion |
|---|---|
| `bin/install_binary.sh` | Lädt die passende `reolinkproxy` Binary nach Architektur |
| `bin/ensure_binary.sh` | Prüft, ob die passende Binary vorhanden ist |
| `bin/reolinkproxy_service.sh` | systemd-Wrapper zum Starten des Proxy-Dienstes |
| `bin/generate_env.pl` | Erzeugt `reolinkproxy.env` aus `settings.json` und `cameras.json` |
| `bin/export_loxone.pl` | Erzeugt Loxone Config Export-Dateien |
| `bin/snapshot_runner.pl` | Automatische Snapshot-Erzeugung per Timer |
| `bin/repair_cameras.pl` | Reparatur-/CLI-Hilfstool für Kamera-Konfiguration |
| `bin/service_control.sh` | Start/Stop/Restart/Status Wrapper für WebUI |
| `bin/RP.pm` | Gemeinsame Perl-Hilfsfunktionen |
| `bin/detect_ip.sh` | Ermittelt die lokale LoxBerry-IP |
| `webfrontend/htmlauth/index.cgi` | Geschützte WebUI-Logik |
| `webfrontend/html/status.cgi` | Öffentlicher Status-Endpunkt |
| `webfrontend/html/snapshot.cgi` | Öffentlicher Snapshot-Endpunkt |
| `webfrontend/html/css/reolinkproxy.css` | Plugin-CSS |

## Laufzeitpfade auf LoxBerry

| Pfad | Funktion |
|---|---|
| `/opt/loxberry/config/plugins/reolinkproxy/` | Aktive Konfiguration |
| `/opt/loxberry/data/plugins/reolinkproxy/` | Laufzeitdaten, Binary, Exportkopien, Backups |
| `/opt/loxberry/log/plugins/reolinkproxy/` | Logdateien |
| `/opt/loxberry/webfrontend/html/plugins/reolinkproxy/` | Öffentliche Webdateien |
| `/opt/loxberry/webfrontend/htmlauth/plugins/reolinkproxy/` | Geschütztes WebUI |
| `/opt/loxberry/templates/plugins/reolinkproxy/` | HTML-Templates und Sprachdateien |

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
