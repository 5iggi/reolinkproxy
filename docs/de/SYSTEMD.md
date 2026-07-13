<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Systemd

[Installation](INSTALLATION.md) · [Konfiguration](KONFIGURATION.md) · [Kameras](KAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpunkte/API](ENDPUNKTE.md) · [Statuswerte](STATUSWERTE.md) · [Struktur](STRUKTUR.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Fehlerbehebung](FEHLERBEHEBUNG.md)

---


## Dienst

```text
reolinkproxy.service
```

Der Dienst startet:

```text
/opt/loxberry/bin/plugins/reolinkproxy/reolinkproxy_service.sh
```

## Befehle

```bash
systemctl status reolinkproxy.service --no-pager
systemctl restart reolinkproxy.service
systemctl stop reolinkproxy.service
journalctl -u reolinkproxy.service -n 120 --no-pager
```

## Umgebung

```text
/opt/loxberry/config/plugins/reolinkproxy/reolinkproxy.env
```

Diese Datei wird durch `generate_env.pl` erzeugt. Ohne gültige Kamera wird der Dienst nicht gestartet.


---

[Zurück](README.md)
