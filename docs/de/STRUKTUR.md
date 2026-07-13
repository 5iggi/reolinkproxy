<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Plugin-Struktur und Dateien

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Installationsdateien

| Datei | Funktion |
|---|---|
| `plugin.cfg` | LoxBerry Plugin-Metadaten |
| `apt/packages.txt` | Paketabhängigkeiten |
| `preinstall.sh` / `postinstall.sh` | Installationsphasen |
| `preupgrade.sh` / `postupgrade.sh` | Upgrade-Backup und Nacharbeiten |
| `postroot.sh` | Root-Aufgaben, systemd, Rechte, Service |

## Bin-Verzeichnis

| Datei | Funktion |
|---|---|
| `RP.pm` | Gemeinsame Perl-Hilfsfunktionen |
| `generate_env.pl` | Erzeugt `reolinkproxy.env` |
| `export_loxone.pl` | Erzeugt Loxone Export-Dateien |
| `export_mqtt_loxone.pl` | Textbasierter MQTT-Loxone-Hilfsexport |
| `mqtt_subscriptions_update.py` | MQTT-Subscriptions aktualisieren |
| `mqtt_publish.pl` | MQTT-Status publizieren |
| `mqtt_gateway_control.sh` | MQTT-Gateway neu laden/prüfen |
| `udp_send.pl` | UDP-Nachricht senden |
| `check_camera.pl` | Kamera prüfen |
| `discovery.pl` | Discovery/Diagnose |
| `uid_check.pl` | UID-Kamera prüfen |
| `repair_cameras.pl` | Reparatur-Hilfstool |
| `event_send.pl` | CLI-Test für Event-Endpunkt |
| `ensure_binary.sh` | Binary prüfen/installieren |
| `install_binary.sh` | Binary laden |
| `reolinkproxy_service.sh` | Dienst-Wrapper |
| `service_control.sh` | Dienststeuerung aus dem WebUI |

## WebUI

| Datei | Funktion |
|---|---|
| `webfrontend/htmlauth/index.cgi` | Übersicht |
| `webfrontend/htmlauth/settings.cgi` | Einstellungen |
| `webfrontend/htmlauth/cameras.cgi` | Kameras |
| `webfrontend/htmlauth/diagnostics.cgi` | Status/Diagnose |
| `webfrontend/htmlauth/logs.cgi` | Logs |
| `webfrontend/htmlauth/export_loxone.cgi` | Export-Download |
| `templates/*.html` | HTML::Template Vorlagen |
| `templates/lang/language_de.ini` | Deutsche Texte |
| `templates/lang/language_en.ini` | Englische Texte |

## Öffentliche Dateien

| Datei | Funktion |
|---|---|
| `webfrontend/html/status.cgi` | Status API |
| `webfrontend/html/snapshot.cgi` | Snapshot API |
| `webfrontend/html/event.cgi` | Event API |
| `webfrontend/html/css/reolinkproxy.css` | WebUI CSS |


---

[Zurück](README.md)
