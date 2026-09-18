# Signal Strength & Range (RSSI)

A weak signal causes slow speeds, packet loss, and frequent disconnects (flapping).

## 1. Understanding RSSI
RSSI (Received Signal Strength Indicator) is measured in negative decibels (dBm). The closer to 0, the better.
- **-30 dBm:** Perfect (You are standing next to the AP).
- **-60 dBm:** Good, reliable signal.
- **-70 dBm:** Marginal. Voice over IP (VoIP) calls will start dropping.
- **-80 dBm or worse:** Unusable. Constant disconnects.

**How to check RSSI in Windows:**
Open Command Prompt and run:
```cmd
netsh wlan show interfaces
```
*(Look for the "Signal" percentage. Anything below 60% will likely cause user complaints).*

## 2. 2.4 GHz vs. 5 GHz Bands
Modern routers broadcast on both bands, often using the same SSID (Band Steering).
- **2.4 GHz:** Slower speeds, but penetrates walls better and has a longer range. Highly congested.
- **5 GHz:** Much faster speeds, but poor wall penetration and shorter range.
- **Troubleshooting:** If a user is far from the router and experiencing drops on 5GHz, force their wireless adapter to prefer 2.4GHz via `devmgmt.msc` -> Network Adapters -> Properties -> Advanced.

## 3. Roaming Issues (Sticky Clients)
**Symptom:** A user walks from one side of the office to the other, and their Wi-Fi drops, even though there is an AP right above them.
- **Root Cause:** The client device decides when to roam, not the AP. Some devices are "sticky" and refuse to let go of a weak AP until the signal completely dies.
- **Fix:** Update the laptop's Wi-Fi driver (especially Intel PROSet drivers). On the infrastructure side, adjust the Minimum RSSI threshold so the AP forcefully kicks the client if the signal drops below -75 dBm.