# Design process

Chaac was designed with the **Ulrich & Eppinger** product development method (July–November 2024).

```mermaid
flowchart LR
  A[Customer needs] --> B[Specifications]
  B --> C[Concept generation]
  C --> D[Concept selection]
  D --> E[Testing & validation]
  E -. iterate .-> A
```

1. **Needs:** 28 needs from interviews with the farm, each rated 1–5 for importance.
2. **Specifications:** each need became a measurable metric with target values. See [specifications.md](specifications.md).
3. **Concept generation:** the problem was split into subsystems (power, motion, storage, transport, dosing, sensing, control, connectivity), and ideas were collected for each one.
4. **Concept selection:** screening and weighted scoring matrices.
5. **Validation:** tests of dosing accuracy, measurement accuracy and reliability.

## Winning concept

| Subsystem | Choice |
|---|---|
| Power | 120 V outlet → 12 V PSU |
| Motion | DC motor |
| Storage | Polyethylene tanks |
| Transport | Silicone tubing |
| Dosing | Peristaltic pump |
| Sensing | Digital EC sensor + analog pH probe |
| Control | ESP8266 |
| Connectivity | Home Assistant + MQTT |

The full reasoning is in the thesis (see *How to cite* in the README).
