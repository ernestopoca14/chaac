# Bill of materials (one module)

Prices in USD from the original 2024 build in Costa Rica (Table 6.3.1). Parts marked 🇨🇷 were bought from [CR Cibernética](https://www.crcibernetica.com) or local stores. Any equivalent part works.

## Fluid handling

| # | Part | Qty | Spec | Where | Price |
|---|---|---|---|---|---|
| 1 | Switching power supply | 1 | 12 V, 2 A (24 W) | 🇨🇷 [CR Cibernética](https://www.crcibernetica.com/12v-2a-power-supply-adapter/) | 5.95 |
| 2 | Peristaltic pump **NKP-DC-S10B** | 3 | 12 V DC, 5 W, ≥ 70 ml/min (≈ 90 ml/min measured), 3 mm ID tube, replaceable head | Online | 29.94 (3) |
| 3 | Silicone tubing | ~2 m | 3 mm inner diameter | 🇨🇷 Aquarium shop | 8.00 |
| 4 | Reservoir bottles | 3 | Polyethylene, 3 L | 🇨🇷 Hardware store | 6.00 |

## Measurement and control

| # | Part | Qty | Spec | Where | Price |
|---|---|---|---|---|---|
| 5 | Atlas Scientific **Mini Conductivity K 1.0 kit** (EZO-EC) | 1 | 0.005–200 mS/cm, ±0.01, 1 s response, I²C/UART | [Atlas Scientific](https://atlas-scientific.com/kits/mini-conductivity-k-1-0-kit/) | 165.99 |
| 6 | Atlas Scientific **Surveyor analog pH kit** | 1 | pH 2–13, 0.1 resolution, 4 s response | [Atlas Scientific](https://atlas-scientific.com/kits/surveyor-analog-ph-kit/) | 69.99 |
| 7 | NodeMCU V3 (ESP8266) | 1 | Lolin | 🇨🇷 [CR Cibernética](https://www.crcibernetica.com/nodemcu-v3-lua-lolin-esp8266-dev-board/) | 9.95 |
| 8 | 4-channel 5 V relay module | 1 | 3 channels used | 🇨🇷 [CR Cibernética](https://www.crcibernetica.com/4-channel-5v-relay-module/) | 6.95 |
| 9 | LM2596 buck converter | 1 | Adjustable 1.25–35 V, set to 7 V | 🇨🇷 [CR Cibernética](https://www.crcibernetica.com/lm2596-dc-dc-buck-converter-step-down-power-module-output-1-25v-35v/) | 4.95 |
| 10 | Hook-up wire | — | AWG 24 | 🇨🇷 Electronics store | 5.00 |
| 11 | Enclosure | 1 | IP67, flanged | 🇨🇷 [CR Cibernética](https://www.crcibernetica.com/ip67-enclosure-flanged-120/) | 11.95 |

## Server (shared by all modules)

| # | Part | Qty | Spec | Where | Price |
|---|---|---|---|---|---|
| 12 | Raspberry Pi 4 Model B (4 GB) + SD card | 1 | Runs Home Assistant OS | 🇨🇷 [CR Cibernética](https://www.crcibernetica.com/raspberry-pi-4-model-b-4-gb/) | 95.95 |

## Totals

| | USD |
|---|---|
| Module hardware (items 1–11) | **≈ 325** |
| + Raspberry Pi (once, if you don't already run Home Assistant) | ≈ 421 |

The thesis total of US$660.62 also includes 30 h of one-time design work (US$240).

## Calibration supplies

- pH buffer solutions: pH 4.00 and pH 7.00
- EC calibration solutions: 12,880 µS/cm and 80,000 µS/cm

## Upgrade tip

The analog pH probe was used only because the farm already had it. It has no electrical isolation, so the recirculation pump adds noise (see [calibration.md](calibration.md)). For new builds, consider an **Atlas EZO-pH** board with an isolator, which uses the same I²C bus as the EC sensor.
