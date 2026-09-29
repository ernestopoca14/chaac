# Remote access

Don't expose Home Assistant, SSH or your MQTT broker directly to the internet with port forwarding or public tunnels.

## Recommended options

1. **VPN**, e.g. [Tailscale](https://tailscale.com) or WireGuard (both have Home Assistant add-ons). Your phone joins your home network securely.
2. **Home Assistant Cloud (Nabu Casa)**: encrypted remote access with no open ports.

## Checklist

- [ ] MQTT broker requires a username and password
- [ ] Home Assistant uses strong passwords and 2FA
- [ ] No credentials in the repository (use `secrets.yaml`)
- [ ] Wi-Fi uses WPA2/WPA3 with a strong password
