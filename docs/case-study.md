# Case study: Vertigreens vertical farm

Chaac was first deployed at Vertigreens, a vertical farm in Guachipelín, San José, Costa Rica, that grows microgreens, baby leaves, edible flowers and gourmet mushrooms for restaurants and hotels. This page summarizes Appendix 9.1 of the thesis: how the farm runs each stage of the process, and which stages are worth automating.

## Real-world operating values

These are the values used at the farm. They are a useful reference for a commercial leafy-greens setup.

| Parameter | Farm value | Typical range (see [hydroponics-basics.md](hydroponics-basics.md)) |
|---|---|---|
| pH | 5.8–6.0 (control band used in testing: 5.4–6.2) | 5.5–6.5 |
| EC | 1.0–1.7 mS/cm | 1.5–2.5 mS/cm |
| Air temperature | 24 °C (air conditioning) | 18–24 °C |
| Relative humidity | 70 % (A/C + dehumidifiers) | 50–70 % |
| Light | 10 h/day, LED (blue 400–500 nm, red 600–700 nm) | 16–18 h/day |
| Full recirculation of the rack | ≈ 30 min | — |
| Germination medium | Peat moss, 3–4 days to transplant | — |
| Harvest cycle | Microgreens 7–12 days, lettuce ≈ 47 days | — |

Light hours and temperature were set lower or higher than ideal to save on electricity. Chaac's default setpoints should be adjusted to your crop and budget.

## Growing system

The farm uses **Sananbio** vertical racks: a hybrid of NFT (nutrient film) and DWC (floating raft). The racks handle irrigation, recirculation, oxygenation and LED lighting.

## Automation potential by stage

| Stage | How it was done | Automation potential |
|---|---|---|
| **pH and EC** | Fully manual: handheld meters, doses estimated by staff | **High.** Continuous, sensor- and pump-friendly. → **This is Chaac.** |
| Lighting | Already automated by the racks | None needed |
| Temperature and humidity | A/C and dehumidifiers, little staff time | Low |
| Ventilation and CO₂ | Fans, not measured; CO₂ not controlled | Possible, but low return on investment |
| Recirculation and oxygenation | Built into the racks | Low |
| Propagation and transplant | Manual, short bursts of work | Low |
| Harvest | Manual, ≈ 2 h per module | Interesting, but the task is complex |
| Cleaning | Manual, ≈ 1 h per module after each harvest | Hard to automate well |

pH and EC control had the best mix of frequency, measurability and return on investment, which is why the project focused on them.
