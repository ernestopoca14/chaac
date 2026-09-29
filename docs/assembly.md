# Assembly

1. **Prepare the enclosure.** Drill cable glands in the IP67 box for: the 12 V input, the pH cable, the EC cable, and 6 pump wires (or one multi-core cable). Keep the glands on the bottom face so water runs off.
2. **Set the buck converter** to 7 V with a multimeter, then mount it.
3. **Mount the NodeMCU, relay module and EC board** on standoffs or a DIN-rail plate.
4. **Wire** according to [wiring.md](wiring.md). Use AWG 24 or thicker for the pump lines.
5. **Mount the pumps** above the reservoir bottles, e.g. on a laser-cut tray or a wall bracket.
6. **Tubing:** from each bottle → pump inlet → pump outlet → main nutrient tank. Keep the outlets **above** the tank water line so nothing siphons back.
7. **Probes:** place the pH and EC probes in the main tank, away from where doses fall and away from the recirculation pump inlet.
8. **Close the lid** (see `hardware/enclosure/lid.scad` for the Chaac emblem lid) and flash the firmware.
9. **Calibrate** the sensors: [calibration.md](calibration.md).

## Priming and dose check

Run each pump until liquid comes out, then time a 3 s run into a measuring cylinder. It should give about 5 ml at ~100 ml/min. Adjust the pump run time in Home Assistant if your pumps differ.
