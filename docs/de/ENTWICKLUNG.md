<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Entwicklung und Release

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Binaries aktualisieren

```bash
sha256sum binaries/reolinkproxy-linux-amd64 > binaries/reolinkproxy-linux-amd64.sha256
sha256sum binaries/reolinkproxy-linux-arm64 > binaries/reolinkproxy-linux-arm64.sha256
sha256sum binaries/reolinkproxy-linux-armv7 > binaries/reolinkproxy-linux-armv7.sha256
```

## Release-Dateien

- `release.cfg`
- `prerelease.cfg`
- Plugin-ZIP als GitHub Release Asset

## Testmatrix

| Bereich | Test |
|---|---|
| Installation | Plugin-ZIP installieren |
| Setup Guard | Dienst ohne Kamera gestoppt |
| Sprache | Deutsch/Englisch über LoxBerry und `lang=` |
| Binary | Architektur und Binary prüfen |
| Dienst | Service mit gültiger Kamera starten |
| Snapshot | `snapshot.cgi` erzeugt JPEG |
| MQTT | Topics und Subscriptions prüfen |
| Loxone | Export in Loxone Config importieren |


---

[Zurück](README.md)
