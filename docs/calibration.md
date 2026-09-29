# Calibration

Calibration runs from the ESPHome web page of the module (`http://<module-ip>`). The values are saved in the ESP8266 flash, so they survive reboots.

## pH: 2-point (pH 4 and pH 7)

1. Rinse the probe with distilled water and dry it.
2. Put it in **pH 7.00** buffer. Wait until the raw reading is stable (≈ 1 min), then press **Calibrate pH 7**.
3. Rinse again. Put it in **pH 4.00** buffer, wait, then press **Calibrate pH 4**.
4. Rinse, and return the probe to the tank.

The firmware converts the raw reading to pH with a straight line through the two points:

```
pH = 7 − 3 · (raw − cal7) / (cal4 − cal7)
```

A third point at pH 10 is possible, but it wasn't needed for the 5.5–6.5 working range.

### Noise filtering

The analog pH board isn't electrically isolated, so the tank's recirculation pump causes fluctuating readings. The firmware applies a **median filter** (removes spikes) followed by a **moving average** (smooths the rest). The EC sensor didn't need filtering.

## EC: 3-point (dry, 12.88 mS/cm, 80 mS/cm)

1. **Dry:** probe clean and dry in air → press **Dry EC Calibration**.
2. **Low:** probe in **12,880 µS/cm** solution → wait until stable → press **EC Low Calibrate**.
3. **High:** probe in **80,000 µS/cm** solution → wait → press **EC High Calibrate**.

The calibration is stored on the EZO board itself. EC probes rarely drift, so recalibrating once or twice a year is usually enough.

## How often

| Sensor | Check | Recalibrate |
|---|---|---|
| pH | Weekly, against a handheld meter | Monthly, or when the error is > 0.1 pH |
| EC | Monthly | Every 6–12 months |
