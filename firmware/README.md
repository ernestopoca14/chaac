# Firmware

ESPHome configuration for one Chaac module: [`chaac.yaml`](chaac.yaml).

## Flash

1. Install ESPHome (`pip install esphome`) or use the ESPHome add-on in Home Assistant.
2. `cp secrets.yaml.example secrets.yaml` and fill in your values. Generate a **new** API key and OTA password.
3. First flash over USB: `esphome run chaac.yaml`. Later updates can go over Wi-Fi (OTA).
4. In Home Assistant, accept the discovered device (**Settings → Devices & services → ESPHome**).

## Several modules

Change `name` (e.g. `chaac-2`) in `substitutions`. Each module then gets its own entities (`sensor.chaac_2_ph`, ...).

## Entities

| Entity | Purpose |
|---|---|
| `sensor.chaac_ph` | Calibrated pH |
| `sensor.chaac_ec` | EC in mS/cm |
| `switch.chaac_pump_nutrients` | Pump 1 (D5): nutrient concentrate |
| `switch.chaac_pump_ph_down` | Pump 2 (D6): pH down |
| `switch.chaac_pump_ph_up` | Pump 3 (D7): pH up |
| `button.chaac_calibrate_ph_4/7`, `button.chaac_ec_calibrate_*` | Calibration (see [docs/calibration.md](../docs/calibration.md)) |

## Changes from the thesis code

- All keys and passwords moved to `secrets.yaml`. The static IP is optional.
- EC is reported in **mS/cm**. The thesis filter `x / 2 / 500` already equals `x / 1000` (µS/cm → mS/cm); only the label said "ppm".
- The median filter runs before the moving average, so spikes are removed before smoothing.
- Pumps have descriptive names and always start **off** after a reboot.
- A guard avoids division by zero before pH calibration.
