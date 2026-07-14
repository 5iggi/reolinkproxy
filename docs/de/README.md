<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

<h1 align="center">Reolink Proxy · LoxBerry Plugin</h1>

<p align="center">
  <img alt="LoxBerry" src="https://img.shields.io/badge/LoxBerry-v3%20/%20v4-4a7a12">
  <img alt="RTSP" src="https://img.shields.io/badge/RTSP-ONVIF-blue">
  <img alt="MQTT" src="https://img.shields.io/badge/MQTT-UDP-orange">
  <img alt="Loxone" src="https://img.shields.io/badge/Loxone-Config%20Export-informational">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-lightgrey">
</p>

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Überblick

**Reolink Proxy** ist ein natives LoxBerry Plugin zur lokalen Einbindung von Reolink Kameras in Smart-Home-Installationen. Im Mittelpunkt steht unter anderem eine Lösung für Reolink WLAN-Kameras, die sonst einen Reolink Hub benötigen. Diese Kameras können über Reolink UID angebunden und lokal als RTSP-/ONVIF-Endpunkte bereitgestellt werden.

PoE- und klassische IP-Kameras von Reolink können zusätzlich direkt per Hostname oder IP-Adresse eingebunden werden. Die Konfiguration erfolgt im LoxBerry-WebUI. Der Dienst `reolinkproxy.service` wird aus den gespeicherten Einstellungen und Kameraeinträgen erzeugt.

## Funktionen

- Native LoxBerry-Integration ohne Docker
- Reolink WLAN-/UID-Kameras ohne Reolink Hub
- Reolink PoE-/IP-Kameras über Host/IP
- Lokale RTSP-Streams über `reolinkproxy`
- Lokaler ONVIF-Endpunkt mit WS-Discovery über `reolinkproxy`
- WebUI mit Übersicht, Kameras, Einstellungen, Status und Logs
- Setup Guard: Dienst bleibt ohne vollständige Einrichtung gestoppt
- MQTT für Motion- und Snapshot-Status
- UDP Legacy/Debug optional
- Externer Snapshot-Endpunkt für Loxone und andere Clients
- Loxone Config Export mit HTTP-, MQTT- und UDP-Vorlagen
- Automatischer Binary-Download für `amd64`, `arm64` und `armv7`
- Zweisprachige WebUI-Texte Deutsch/Englisch

## Grundlage

Das Plugin baut auf dem Projekt `Shareed2k/reolinkproxy` auf:

```text
https://github.com/Shareed2k/reolinkproxy/
```

Der Upstream-Proxy übersetzt Reolinks Baichuan-Protokoll in RTSP-Streams und ONVIF. Das LoxBerry Plugin ergänzt Installation, Konfiguration, Dienstverwaltung, Loxone-Export, MQTT/UDP und WebUI.

## Ersteinrichtung

1. Plugin installieren.
2. Einstellungen speichern.
3. Mindestens eine Kamera anlegen.
4. Dienst starten oder nach dem Speichern automatisch starten lassen.
5. Loxone Vorlagen exportieren.

Eine Kamera gilt als gültig, wenn ein Name vorhanden ist und zusätzlich entweder eine UID oder ein Host/IP-Wert hinterlegt ist.


---

<p align="center">
  <img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="24" height="24"><br>
  <strong>Reolink Proxy</strong><br>
  Loxone · LoxBerry · Reolink Proxy
</p>
