# Roadmap

## In progress: publishing the original build

- [x] Bill of materials with part models and prices
- [x] Wiring pin map
- [x] Calibration guide (pH 4/7 and EC)
- [x] Validation results
- [ ] Relay module power supply (thesis Appendix 9.2)
- [ ] ESPHome firmware (Appendix 9.3)
- [ ] Home Assistant dashboard (Appendix 9.4)
- [ ] Home Assistant automations: low pH, high pH, low EC, notifications (Appendix 9.5)
- [ ] Pump tray laser-cut and FreeCAD files in `hardware/pump-tray/`
- [ ] Chaac emblem SVG in `branding/`

## Recommendations from the thesis (Chapter 7.2)

These are the next improvements the original author proposed. They are good contributions.

- [ ] **Digital pH sensor.** Replace the analog pH probe with a digital or isolated one (e.g. Atlas EZO-pH + isolator) to reduce noise.
- [ ] **Custom PCB.** One board for the ESP, relays/drivers, power and sensor connectors, to save space and simplify maintenance.
- [ ] **Proportional dosing.** Size each dose based on how far pH or EC is from the setpoint and on the tank volume, instead of fixed doses.
- [ ] **Broader validation.** Test more influencing factors (temperature, tank volume, crop stage, different nutrients).
- [ ] **Better enclosure.** A purpose-designed, 3D-printable case with the Chaac emblem, optimized for space and humidity.
- [ ] **Replace the buck converter.** Use MOSFET pump drivers and a compact regulator instead of the relays and LM2596.
- [ ] **Tune the EC response.** Adjust the dose size and interval (EC reliability was 91 %; the goal is > 95 %).
- [ ] **Mixing pump in the tank.** Speeds up mixing so readings stabilize faster after each dose.

## Needs identified in the thesis but not built yet

These came from the original requirements (Table 4.1.1):

- [ ] Water temperature sensor (e.g. DS18B20) with EC temperature compensation
- [ ] Reservoir level sensor
- [ ] Air temperature and humidity logging
- [ ] CSV/XLSX data export
- [ ] SMS or sound alerts in addition to e-mail/push

## Other

- [ ] ESP32 support
- [ ] Multi-module setup (> 10 modules per Home Assistant instance)
