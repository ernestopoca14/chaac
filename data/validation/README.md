# Validation data

Raw data from the thesis validation tests (Appendix 9.6). 68 samples per test. License: CC BY-SA 4.0.

| File | Test | Columns | Reference |
|---|---|---|---|
| `test1_dosing.csv` | Dosing accuracy, 3 s pump run (target 5 ml) | ml dispensed for pH up, EC up (nutrients), pH down | Measuring cylinder |
| `test2_ph_accuracy.csv` | pH accuracy, tank at EC 1.0 mS/cm, 1 sample / 5 min | Chaac sensor vs. handheld meter | Handheld pH meter |
| `test3_ec_accuracy.csv` | EC accuracy, tank at pH 6, 1 sample / 5 min | Chaac sensor vs. handheld meter (mS/cm) | Handheld EC meter |
| `test4_ph_reliability.csv` | pH control on a 5-level rack, random 10 ml disturbances, 1 sample / 30 min | pH | In range = 5.4–6.2 |
| `test5_ec_reliability.csv` | EC control on a 5-level rack, 1 sample / 30 min | EC (mS/cm) | In range = ≥ 1.0 mS/cm |

The raw data reproduces the published results: test 2 has 9 readings that differ by 0.1 pH (0.23 % mean error), test 4 has 2 readings out of range (5.3 and 6.3 → 97.06 %), and test 5 has 6 readings below 1.0 mS/cm (62/68 → 91.18 %).

In the thesis PDF, the last 8 rows of test 3 lost their column layout. They were paired in order (sensor, manual) here.

Quick look in Python:

```python
import pandas as pd
df = pd.read_csv("test2_ph_accuracy.csv")
print((abs(df.sensor_ph - df.manual_ph) / df.manual_ph).mean() * 100)  # ≈ 0.23 %
```
