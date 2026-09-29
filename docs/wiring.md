# Wiring

> ⚠️ The mains side (120/230 V) belongs only inside the power supply. Everything in the enclosure runs on 12 V DC or less.

## Pin map (NodeMCU V3)

| NodeMCU pin | Connects to | Notes |
|---|---|---|
| A0 | Analog pH board, signal out | Filtered in firmware (median + moving average) |
| D2 (GPIO4) | EZO-EC **SDA** | I²C |
| D1 (GPIO5) | EZO-EC **SCL** | I²C |
| D5 (GPIO14) | Relay IN1 → pump 1 | Active-low (relay on when the pin is LOW) |
| D6 (GPIO12) | Relay IN2 → pump 2 | Active-low |
| D7 (GPIO13) | Relay IN3 → pump 3 | Active-low |
| VIN | Buck converter OUT+ (**7 V**) | |
| GND | Common ground | |

## Power

```
12 V PSU (+) ──┬── buck converter IN+ ── (set to 7 V) ── NodeMCU VIN
               └── relay COM1/COM2/COM3
relay NO1/NO2/NO3 ── pump 1/2/3 (+)
pump 1/2/3 (–) ───── 12 V PSU (–) ── buck IN– ── NodeMCU GND
```

Adjust the buck converter to 7 V with a multimeter **before** connecting the NodeMCU.

## Relay module power

The relay module is a 5 V board. Power its VCC from a stable 5 V source (the NodeMCU's 5 V/VU pin when powered over USB, or a second buck converter set to 5 V) and connect its GND to the common ground. The ESP8266's 3.3 V outputs drive the inputs directly on most modules.

> 🚧 The exact relay supply from the thesis electrical plan (Appendix 9.2) will be added here.

## EZO-EC in I²C mode

The EZO-EC ships in **UART** mode. Switch it to I²C before wiring:

1. With the board powered off, short **PGND** to **TX**.
2. Power it on and wait until the LED turns blue.
3. Remove the short. The board keeps I²C mode, at the default address `0x64`.

## Pump assignment

| Pump | Liquid |
|---|---|
| 1 | pH down |
| 2 | pH up |
| 3 | Nutrient concentrate (EC up) |

You can change this in the firmware, but label the tubing to match.
