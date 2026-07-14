<p align="center"><img src="../assets/reolinkproxy-logo.svg" alt="Reolink Proxy Logo" width="96" height="96"></p>

## Cameras

[Installation](INSTALLATION.md) · [Configuration](CONFIGURATION.md) · [Cameras](CAMERAS.md) · [MQTT/UDP](MQTT_UDP.md) · [Loxone](LOXONE.md) · [Endpoints/API](ENDPOINTS.md) · [Status Values](STATUS_VALUES.md) · [Structure](STRUCTURE.md) · [Binaries](BINARIES.md) · [Systemd](SYSTEMD.md) · [Tests](TESTS.md) · [Troubleshooting](TROUBLESHOOTING.md)

---


## Camera types

- **UID** for Reolink Wi-Fi/UID cameras, especially models that would otherwise require a Reolink Hub.
- **Host/IP** for PoE and regular IP cameras.


## Battery cameras 

For battery/UID cameras, `battery_camera=true` can be set.

When a camera is marked as a battery camera, the plugin automatically generates battery-saving lifecycle options for `reolinkproxy`:

```text
REOLINK_CAMERA_<n>_BATTERY_CAMERA=true
REOLINK_CAMERA_<n>_IDLE_DISCONNECT=true
REOLINK_CAMERA_<n>_IDLE_TIMEOUT=10s
REOLINK_CAMERA_<n>_PAUSE_ON_CLIENT=true
REOLINK_CAMERA_<n>_PAUSE_ON_MOTION=true
REOLINK_CAMERA_<n>_PAUSE_TIMEOUT=3s
```

## Required data

A camera is valid when it has:

```text
Name + UID
```

or:

```text
Name + Host/IP
```

## Fields

- **Name**: local camera name.
- **UID**: Reolink UID.
- **Host/IP**: direct camera address.
- **User / Password**: camera credentials.
- **Streams**: usually `main,sub`.
- **Talk**: usually `sub`.

`Check & save` saves after successful checks. `Save anyway` stores without a successful check.


---

[Back](README.md)
