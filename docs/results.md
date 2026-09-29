# Validation results

The prototype was tested on a 5-level hydroponic rack at the Vertigreens farm (Costa Rica) in 2024. Each test used **68 samples** (90 % confidence, 10 % margin of error). A handheld meter or a measuring cylinder was the reference.

| Test | Pass criterion | Result | |
|---|---|---|---|
| 1. Dosing accuracy (5 ml dose = 3 s pump run; pH up, pH down, nutrients) | error < 5 % | ≈ 1.9–2.0 % per liquid | ✅ |
| 2. pH measurement accuracy (tank at EC 1.0 mS/cm) | error < 2 % | 0.23 % (max deviation 0.1 pH) | ✅ |
| 3. EC measurement accuracy (tank at pH 6) | error < 2 % | 0.61 % (max deviation 0.02 mS/cm) | ✅ |
| 4. pH control reliability (range 5.4–6.2, random 10 ml disturbances, 1 sample / 30 min) | > 90 % in range | 97.06 % (66/68) | ✅ |
| 5. EC control reliability (≥ 1.0 mS/cm, 1 sample / 30 min) | > 90 % in range | 91.18 % (62/68) | ✅ |

## Raw data

All 68 samples of each test are in [`data/validation/`](../data/validation/) as CSV files, so you can re-plot them or compare them with your own build.

## Notes

- In test 5, EC dipped below 1.0 mS/cm and was corrected on the **next** dosing cycle. A shorter check interval (now 5 min in `homeassistant/packages/chaac.yaml`) should raise the reliability.
- Dosed volumes ranged from 4.7 to 5.2 ml for a 5 ml target.

## Economics (from the thesis)

The savings come from labor no longer spent on manual measurement and dosing (5-year horizon, 10 % discount rate):

| Modules | NPV | IRR |
|---|---|---|
| 1 | US$852 | 53 % |
| 5 | US$5,606 | 99 % |
| 15 | US$17,489 | 112 % |

In every case the modules pay for themselves from the second year.
