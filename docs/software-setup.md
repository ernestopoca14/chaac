# Software setup

## 1. Home Assistant

1. Install **Home Assistant OS** on a Raspberry Pi 4 (see home-assistant.io/installation).
2. Install the **ESPHome** add-on (**Settings → Add-ons**).
3. Optional: install a VPN add-on for remote access ([remote-access.md](remote-access.md)).

## 2. Firmware

Follow [firmware/README.md](../firmware/README.md): copy the secrets template, generate new keys, flash `chaac.yaml`, and adopt the device in Home Assistant.

## 3. Control logic

1. Copy `homeassistant/packages/chaac.yaml` to `/config/packages/`.
2. Add to `configuration.yaml`:
   ```yaml
   homeassistant:
     packages: !include_dir_named packages
   ```
3. Restart Home Assistant.

## 4. Dashboard

Create a new dashboard and paste `homeassistant/dashboard.yaml` in the raw configuration editor.

## How the control works

Every 5 minutes each automation checks its condition:

| Automation | Condition | Action |
|---|---|---|
| pH high | pH > target + tolerance | Pump 2 (pH down) for *pH dose* seconds |
| pH low | pH < target − tolerance | Pump 3 (pH up) for *pH dose* seconds |
| EC low | EC < EC minimum | Pump 1 (nutrients) for *nutrient dose* seconds |
| Attention | Out of range for 2 h | Notification |

A pump only doses again after the *minimum time between doses* (default 40 min), so the solution can mix through the system before the next reading. The farm's rack recirculates in about 30 min.

Defaults (from the thesis): pH 5.8 ± 0.2, EC ≥ 1.0 mS/cm, 3 s pH doses (≈ 5 ml), 10 s nutrient doses, 40 min interval. Adjust them for your tank volume and crop.

## Changes from the thesis automations

- Setpoints come from the dashboard inputs instead of fixed numbers.
- The pH-high automation now also waits between doses (in the thesis this condition was disabled).
- Checks run every 5 min with a cooldown instead of every 30 min, so corrections start sooner. This addresses the thesis recommendation to improve the EC response.
