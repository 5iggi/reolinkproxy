<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Kameras

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Kameraarten

Das Plugin unterstützt zwei grundlegende Zugriffsarten:

- **UID** für Reolink WLAN-/UID-Kameras, insbesondere für Kameras, die sonst einen Reolink Hub benötigen.
- **Host/IP** für PoE- und klassische IP-Kameras.


## Akku-Kameras

Für Akku-/UID-Kameras kann `battery_camera=true` gesetzt werden.

Wenn eine Kamera als Akku-Kamera markiert ist, erzeugt das Plugin automatisch akku-schonende Lifecycle-Optionen für `reolinkproxy`.

Standardwerte:

```text
REOLINK_CAMERA_<n>_BATTERY_CAMERA=true
REOLINK_CAMERA_<n>_IDLE_DISCONNECT=true
REOLINK_CAMERA_<n>_IDLE_TIMEOUT=10s
REOLINK_CAMERA_<n>_PAUSE_ON_CLIENT=true
REOLINK_CAMERA_<n>_PAUSE_ON_MOTION=true
REOLINK_CAMERA_<n>_PAUSE_TIMEOUT=3s
```

Bereits explizit konfigurierte Werte der Kamera werden beibehalten und überschreiben diese automatischen Defaults.

Beispiel:

```text
REOLINK_CAMERA_0_IDLE_TIMEOUT=30s
REOLINK_CAMERA_0_PAUSE_ON_MOTION=false
REOLINK_CAMERA_0_PAUSE_TIMEOUT=2s
```

Diese Optionen sollen verhindern, dass idle Preview-Sessions unnötig aktiv bleiben. Je nach Kamera-Modell und Firmware kann dies Einfluss auf die Reaktionszeit von MQTT-Motion-Ereignissen haben.

Für PoE- und dauerhaft versorgte IP-Kameras ist diese Einstellung normalerweise nicht erforderlich.

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
