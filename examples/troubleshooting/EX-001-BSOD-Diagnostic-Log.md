# EX-001: BSOD Diagnostic Log

- **Ticket ID:** INC-9021
- **Investigator:** Gabriel Lopes
- **Date:** 2026-09-23

## 1. Problem Statement
User's CAD workstation (Hostname: `WS-ENG-04`) is randomly crashing with a Blue Screen of Death (BSOD) when rendering 3D models in AutoCAD.

## 2. Hypothesis
Since it only happens during heavy graphical loads, the issue is likely thermal throttling or a corrupted GPU driver.

## 3. Tests Conducted
| Test Performed | Expected Result | Actual Result | Pass/Fail |
| :--- | :--- | :--- | :--- |
| Check Event Viewer (System Log) | Identify Stop Code | Found `BugCheck 0x00000119` (VIDEO_SCHEDULER_INTERNAL_ERROR) | FAIL |
| Analyze Minidump (`C:\Windows\Minidump`) | Identify faulting module | Faulting module: `nvlddmkm.sys` (NVIDIA Driver) | FAIL |
| Run `Get-SystemHealth.ps1` | Normal temps/RAM | RAM OK. CPU temps normal. | PASS |
| Run `sfc /scannow` | No integrity violations | No integrity violations found. | PASS |

## 4. Conclusion & Next Steps
**Conclusion:** The hypothesis was partially correct. The crashes are directly caused by a corrupted NVIDIA graphics driver (`nvlddmkm.sys`), not thermal issues.

**Action Taken:**
1. Booted into Safe Mode.
2. Used DDU (Display Driver Uninstaller) to completely wipe the corrupted NVIDIA driver.
3. Rebooted and installed the latest "Studio Driver" directly from the vendor website.
4. Ran a 20-minute CAD stress test. No crashes occurred.

**Status:** Resolved.