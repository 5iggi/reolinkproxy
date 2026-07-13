<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Kameras

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Kameraarten

Das Plugin unterstützt zwei grundlegende Zugriffsarten:

- **UID** für Reolink WLAN-/UID-Kameras, insbesondere für Kameras, die sonst einen Reolink Hub benötigen.
- **Host/IP** für PoE- und klassische IP-Kameras.

## Pflichtfelder

Eine Kamera ist gültig, wenn folgende Daten vorhanden sind:

```text
Name + UID
```

oder:

```text
Name + Host/IP
```

## Felder

- **Name**: lokaler Name, nur sichere Zeichen verwenden.
- **UID**: Reolink UID.
- **Host/IP**: direkte Adresse der Kamera.
- **Benutzer / Passwort**: Kamera-Zugangsdaten.
- **Streams**: meist `main,sub`.
- **Talk**: meist `sub`.

## Kameraprüfung

Im WebUI kann jede Zeile geprüft werden. `Prüfen & Speichern` speichert nur, wenn die Prüfung erfolgreich ist. `Trotzdem speichern` speichert ohne erfolgreiche Prüfung.

## Dienststart

Nach dem Speichern einer gültigen Kamera werden die Umgebungsvariablen erzeugt und der Dienst gestartet oder neu gestartet.


---

[Zurück](README.md)
