# Troubleshooting

## Logs

```text
/opt/loxberry/log/plugins/reolinkproxy/
```

Important logs:

```text
install_binary.log
binary.log
webui.log
generate_env.log
export_loxone.log
snapshot.cgi.log
reolinkproxy-wrapper.log
upgrade.log
```

## Old frontend still visible

Use a cache buster:

```text
/admin/plugins/reolinkproxy/index.cgi?nocache=0530
```
