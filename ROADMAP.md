# Roadmap

## In progress: publishing the original build

- [ ] Bill of materials with part models and prices
- [ ] Wiring diagram and pin assignments
- [ ] ESPHome firmware
- [ ] Home Assistant dashboard and automations (low pH, high pH, low EC, notifications)
- [ ] Calibration guide (pH 4/7 and EC)
- [ ] Validation results
- [ ] Chaac emblem SVG in `branding/`

## Next: needs identified in the thesis but not built yet

These came from the original requirements (Table 4.1.1) and are good first contributions:

- [ ] Water temperature sensor (e.g. DS18B20) with EC temperature compensation
- [ ] Reservoir level sensor
- [ ] Air temperature and humidity logging
- [ ] CSV/XLSX data export
- [ ] SMS or sound alerts in addition to e-mail/push

## Improvements

- [ ] Replace the analog pH probe with an isolated or digital pH module (the analog probe was used only because it was already on hand)
- [ ] ESP32 support
- [ ] Multi-module setup (> 4 modules per Home Assistant instance)
