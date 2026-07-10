<p align="center"><img src="../../icons/icon_128.png" alt="Reolink Proxy Logo" width="80"></p>
<h1 align="center">Development and Release</h1>
<p align="center"><img alt="Development" src="https://img.shields.io/badge/Development-Maintainer-blue.svg"></p>
<p align="center"><a href="README.md">Home</a> · <a href="STRUCTURE.md">Structure</a> · <a href="TESTS.md">Tests</a></p>

---

## Update binaries

```bash
sha256sum binaries/reolinkproxy-linux-amd64 > binaries/reolinkproxy-linux-amd64.sha256
sha256sum binaries/reolinkproxy-linux-arm64 > binaries/reolinkproxy-linux-arm64.sha256
sha256sum binaries/reolinkproxy-linux-armv7 > binaries/reolinkproxy-linux-armv7.sha256
```

## Release files

- `release.cfg`
- `prerelease.cfg`
- GitHub Release Asset: `reolinkproxy_<version>_loxberry.zip`

## Test matrix

| System | Test |
|---|---|
| LoxBerry v3 armv7l | Installation, binary, WebUI, stream, snapshot |
| LoxBerry v4 x86_64/Proxmox | Installation, binary, WebUI, stream, snapshot |
| Raspberry Pi 64-bit arm64 | Binary download and service start |

---

<p align="center"><a href="README.md">Back to English home</a></p>
