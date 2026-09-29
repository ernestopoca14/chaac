# Contributing to Chaac

Thanks for helping! Contributions of all sizes are welcome.

## Ways to help

- Build a Chaac and share photos, costs and problems in an issue.
- Improve docs, translations and wiring diagrams.
- Pick an item from [ROADMAP.md](ROADMAP.md).
- Report bugs with your hardware, firmware version and logs.

## Rules

1. **Never commit credentials.** Wi-Fi passwords, MQTT users, API keys and tunnel addresses go in `firmware/secrets.yaml`, which is git-ignored. Only edit `secrets.yaml.example`.
2. Keep setpoints and calibration values configurable. Don't hard-code them.
3. Document any hardware change in `docs/` in the same pull request.
4. Code is MIT, and docs and hardware are CC BY-SA 4.0. By contributing, you agree your work is released under these licenses.

## Pull requests

1. Fork the repo and create a branch (`feature/tank-level-sensor`).
2. Test on real hardware when you can, and say so in the PR.
3. Open the PR with a short description of what changed and why.
