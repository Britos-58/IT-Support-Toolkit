# Wi-Fi Interference & Channels

If the signal is strong (e.g., -50 dBm) but the internet is still incredibly slow or dropping, the issue is almost certainly interference.

## 1. Co-Channel Interference (CCI)
Wi-Fi is a half-duplex medium; only one device can "talk" on a specific channel at a time.
- **Symptom:** High latency and low throughput in crowded areas (e.g., apartment buildings, dense offices).
- **Troubleshooting:**
  - On the **2.4 GHz band**, there are only 3 non-overlapping channels: **1, 6, and 11**.
  - If your AP is on Channel 6, and 5 neighboring routers are also on Channel 6, they are all waiting in the same line to transmit data.
  - **Fix:** Use a Wi-Fi Analyzer tool to scan the environment and manually change your AP to the least congested non-overlapping channel.

## 2. Physical Barriers
Different materials absorb Wi-Fi signals differently.
- **Low Impact:** Wood, drywall, glass.
- **High Impact:** Brick, concrete, water (e.g., large fish tanks).
- **Wi-Fi Killers:** Metal (metal filing cabinets, mirrors, elevator shafts, foil-backed insulation).
- **Fix:** Relocate the Access Point. APs should be mounted high on the ceiling, in line-of-sight if possible.

## 3. Non-Wi-Fi Interference
Other devices operate on the 2.4 GHz frequency and will disrupt Wi-Fi packets without showing up on standard Wi-Fi scanners.
- **Common Culprits:** Microwave ovens (can completely kill Wi-Fi when running), Bluetooth devices, cordless phones, and wireless baby monitors.
- **Fix:** Move the user to the 5 GHz band, which is mostly immune to household appliance interference.