# Application Performance & Freezing

When an application shows as "Not Responding" or takes too long to execute tasks, you must determine if the bottleneck is local (CPU/RAM/Disk) or external (Network/Database).

## 1. Local Resource Exhaustion
**Symptom:** The application is sluggish, and the entire PC feels slow.
- **Troubleshooting:**
  - Open Task Manager -> **Processes** tab.
  - **Memory Leak:** If `<App_Name.exe>` is consuming 90% of the RAM and the usage keeps climbing without stopping, the app has a memory leak. The only temporary fix is to restart the app; the permanent fix requires a patch from the developer.
  - **High CPU:** If the app is using a constant 25% CPU (which often represents exactly 1 full core on a 4-core system) while idle, it is caught in an infinite loop.

## 2. External Dependencies (The "Wait" State)
**Symptom:** The application clicks are responsive, but when a user searches for a record, it freezes for 30 seconds and says "Not Responding" before finally loading.
- **Troubleshooting:**
  - This is rarely a local PC issue. The application is waiting for a response from a remote server (e.g., a Database or an API).
  - Because the application's UI thread is blocked waiting for the network, Windows flags it as "Not Responding".
  - **Action:** Escalate to Network or Database teams, providing the exact time of the freeze and the action the user performed.

## 3. Using Process Monitor (ProcMon)
If you need to know exactly *what* the application is waiting for:
1. Open **ProcMon**.
2. Set a filter: `Process Name` `is` `<App_Name.exe>`.
3. Reproduce the freeze.
4. Stop the capture and look at the last few events. Is it trying to read a missing file? Is it timing out trying to query a registry key? Is it attempting a TCP connection to a dead IP address?