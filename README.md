# Chaac

**Open-source pH & EC monitoring and automatic dosing for hydroponics**
(ESP8266 + ESPHome + Home Assistant + MQTT)

> Named after Chaac, the Maya god of rain.

> 🚧 **Work in progress.** The parts list, wiring, firmware and automations are being added from the original thesis. See [ROADMAP.md](ROADMAP.md).

## What it does

Chaac measures the pH and electrical conductivity (EC) of a hydroponic nutrient solution and automatically doses corrective liquids with peristaltic pumps:

- **pH down / pH up**: keeps pH in the target range (default 5.5–6.5)
- **Nutrient concentrate**: keeps EC in the target range (default 1.5–2.5 mS/cm)
- **Dashboard and notifications**: live data, graphs and alerts in Home Assistant

## Architecture

```
120 V AC ──► 12 V / 24 W PSU ──┬──► 3 × peristaltic pumps (12 V DC) ──► silicone tubing (3 mm ID) ──► reservoir
                               └──► buck converter ──► ESP8266 (ESPHome)
                                                          ▲        │
                                            pH + EC probes ┘        └── Wi-Fi / MQTT ──► Home Assistant (Raspberry Pi)
```

More details: [docs/architecture.md](docs/architecture.md)

## Documentation

| Document | Status |
|---|---|
| [Architecture](docs/architecture.md) | ✅ |
| [Specifications](docs/specifications.md) | ✅ targets, results pending |
| [Power budget](docs/power.md) | ✅ |
| [Hydroponics basics](docs/hydroponics-basics.md) | ✅ |
| [Design process](docs/design-process.md) | ✅ |
| [Remote access](docs/remote-access.md) | ✅ |
| Bill of materials | 🚧 |
| Wiring | 🚧 |
| Assembly | 🚧 |
| Calibration | 🚧 |
| Firmware (ESPHome) | 🚧 |
| Home Assistant automations | 🚧 |

## Repository layout

```
branding/          Chaac emblem (SVG)
docs/              Build and background documentation
firmware/          ESPHome configuration (secrets template included)
hardware/enclosure OpenSCAD enclosure parts
```

## Background

Chaac started as the graduation project *Automatización de procesos de medición y dosificación en cultivos hidropónicos* (Mechatronics Engineering, Instituto Tecnológico de Costa Rica, 2024), developed with the vertical farm Vertigreens in Costa Rica. At the farm, pH and EC were measured and corrected by hand every day. This project automates both steps and makes the data available remotely.

## How to cite

```bibtex
@thesis{pocasangre2024chaac,
  author = {Pocasangre Kreling, Ernesto},
  title  = {Automatización de procesos de medición y dosificación en cultivos hidropónicos},
  school = {Instituto Tecnológico de Costa Rica},
  type   = {Licenciatura thesis, Mechatronics Engineering},
  year   = {2024},
  address = {Cartago, Costa Rica}
}
```

## Licenses

- **Code** (`firmware/`, automations, scripts): [MIT](LICENSE)
- **Documentation and hardware** (`docs/`, `hardware/`, `branding/`): [CC BY-SA 4.0](LICENSE-docs-hardware.md)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
