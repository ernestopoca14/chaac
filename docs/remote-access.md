# Remote access

Don't expose Home Assistant, SSH or your MQTT broker directly to the internet with port forwarding or public tunnels.

## Recommended options

1. **VPN add-on in Home Assistant.** The original build used **ZeroTier One** (free tier). [Tailscale](https://tailscale.com) and WireGuard work the same way. Your phone or laptop joins the network and opens Home Assistant at its private address.
2. **Home Assistant Cloud (Nabu Casa):** encrypted remote access with no open ports.

### ZeroTier quick setup

1. Create a network at my.zerotier.com and copy the network ID.
2. In Home Assistant: **Settings → Add-ons → ZeroTier One**, paste the network ID and start the add-on.
3. Authorize the new member in the ZeroTier web console.
4. Install ZeroTier on your phone or laptop, join the same network, and open `http://<zerotier-ip>:8123`.

## Checklist

- [ ] MQTT broker requires a username and password
- [ ] Home Assistant uses strong passwords and 2FA
- [ ] No credentials in the repository (use `secrets.yaml`)
- [ ] Wi-Fi uses WPA2/WPA3 with a strong password
