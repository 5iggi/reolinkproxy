<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Entwicklung und Release</h1>
<p align="center"><img alt="Development" src="https://img.shields.io/badge/Development-Maintainer-blue.svg"></p>
<p align="center"><a href="README.md">Start</a> · <a href="STRUKTUR.md">Struktur</a> · <a href="TESTS.md">Tests</a></p>

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
- GitHub Release Asset: `reolinkproxy_<version>_loxberry.zip`

## Testmatrix

| System | Test |
|---|---|
| LoxBerry v3 armv7l | Installation, Binary, WebUI, Stream, Snapshot |
| LoxBerry v4 x86_64/Proxmox | Installation, Binary, WebUI, Stream, Snapshot |
| Raspberry Pi 64-bit arm64 | Binary-Download und Dienststart |

---

<p align="center"><a href="README.md">Zurück zur deutschen Startseite</a></p>
