# Hydroponics basics

A short primer for Chaac builders, based on Chapter 2 of the thesis.

## Target values

| Parameter | Typical target |
|---|---|
| pH | 5.5–6.5 |
| EC | 1.5–2.5 mS/cm (depends on the crop) |
| Air temperature | 18–24 °C by day, slightly lower at night |
| Relative humidity | 50–70 % |
| CO₂ | ~400 ppm ambient, up to 1000–1200 ppm with enrichment |
| Dissolved oxygen | > 6 ppm |
| Photoperiod | 16–18 h of light per day (most leafy crops) |

## Why pH and EC matter

- **pH** controls nutrient availability. Outside 5.5–6.5, uptake of iron, phosphorus and magnesium suffers. High pH makes nutrients precipitate, and low pH makes metals more soluble, which can become toxic.
- **EC** measures dissolved salts, which shows how many nutrients are in the solution. Low EC means the plants are starving. High EC causes osmotic stress. EC drops as plants feed, so nutrients have to be topped up regularly. That's what Chaac automates.

## Common system types

| System | How it works | Good for |
|---|---|---|
| Static solution | Roots sit in still solution | Simple setups (watch the oxygen) |
| NFT | Thin film of solution flows over the roots | Leafy greens |
| DWC (floating raft) | Roots hang in aerated solution | Lettuce, spinach |
| Aeroponics | Roots are misted | High-value crops |
| Wick | Capillary wick feeds the roots | Herbs, small plants |

## Recirculation and cleaning

- Recirculating systems save water and nutrients but need constant pH/EC monitoring.
- Clean tanks, tubing and pumps regularly (hydrogen peroxide or diluted sodium hypochlorite), then rinse.
- Store probes according to the manufacturer's instructions. pH probes must stay wet.

## Signal filtering

The sensor readings are noisy. Chaac uses:

- a **median filter** to remove spikes and outliers, and
- a **moving average** to smooth the remaining noise.

## Enclosure (IP rating)

Grow rooms are humid. Put the electronics in an enclosure rated at least **IP54**, and keep the mains side separate from the wet side.
