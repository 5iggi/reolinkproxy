<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Installation

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Voraussetzungen

- LoxBerry v3 oder v4
- Internetzugriff während der Installation für den Binary-Download
- `ffmpeg` für Snapshots
- `curl`, `unzip`, `zip`, `sudo`, `file`
- Perl/CGI/HTML::Template für das WebUI

Die Paketabhängigkeiten stehen in:

```text
apt/packages.txt
```

## Installation über LoxBerry

1. Plugin-ZIP herunterladen.
2. LoxBerry Plugin-Verwaltung öffnen.
3. ZIP-Datei hochladen und installieren.
4. WebUI öffnen:

```text
/admin/plugins/reolinkproxy/index.cgi
```

## Setup Guard

Bei einer Neuinstallation startet der Dienst nicht ohne Konfiguration. Das WebUI führt zur passenden Seite:

```text
/admin/plugins/reolinkproxy/settings.cgi?setup=1
/admin/plugins/reolinkproxy/cameras.cgi?setup=1
```

Der Dienst bleibt gestoppt, solange keine gültige Kamera existiert.

## Prüfung nach Installation

```bash
systemctl status reolinkproxy.service --no-pager
uname -m
file /opt/loxberry/data/plugins/reolinkproxy/bin/reolinkproxy
```


---

[Zurück](README.md)
