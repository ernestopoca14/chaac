# Power budget

| Load | Max power |
|---|---|
| 3 × peristaltic pumps × 5 W | 15 W |
| ESP8266 + sensors + buck converter | < 1 W |
| **Total (worst case)** | **≈ 16 W** |

The firmware never runs all three pumps at once, so 16 W is only a sizing value. The next standard supply size, **12 V / 24 W (2 A)**, leaves about 50 % headroom.

A buck converter steps the 12 V down to 5 V for the ESP8266 board.

> ⚠️ Mains wiring (120/230 V) must be enclosed and strain-relieved. Use a supply with its own enclosure, or have a qualified person wire it.
