# Specifications

These are the target values from the thesis (Table 4.2.2), compared with what the prototype achieved (Chapters 5–6, see [results.md](results.md)).

| Metric | Acceptable | Ideal | Achieved |
|---|---|---|---|
| pH measuring range | 3–10 | 0–14 | 2–13 ✅ |
| EC measuring range | 0.5–2 mS/cm | 0.2–5 mS/cm | 0.005–200 mS/cm ✅ |
| Sampling interval | < 15 min | < 5 min | seconds (configurable) ✅ |
| Sensor accuracy (error) | < 10 % | < 5 % | pH 0.23 %, EC 0.61 % ✅ |
| pH dosing accuracy (error) | < 20 % | < 10 % | ≈ 2 % ✅ |
| EC dosing accuracy (error) | < 20 % | < 10 % | ≈ 2 % ✅ |
| Dosing response time | < 15 min | < 5 min | configurable interval |
| Reliability | > 90 % | > 95 % | pH 97.06 %, EC 91.18 % ✅ |
| Operating temperature | 15–35 °C | 10–40 °C | — |
| Operating humidity | 50–80 % | 30–90 % | IP67 enclosure |
| Cost per module | < US$800 | < US$500 | ≈ US$325 hardware ✅ |
| Data export | CSV | CSV, XLSX | via Home Assistant history |
| Alerts | E-mail | E-mail, SMS, sound | Home Assistant notifications |
| Horizontal scalability | > 4 modules | > 10 modules | one Home Assistant for many modules ✅ |
