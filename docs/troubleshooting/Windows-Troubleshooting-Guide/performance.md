# Performance Diagnostics

## 1. 100% Disk Usage / High CPU
**Symptoms:** System is extremely slow, unresponsive, and Task Manager shows Disk or CPU pegged at 100%.

**Diagnostic Steps:**
1. Open **Resource Monitor** (`resmon`).
2. Go to the **Disk** or **CPU** tab.
3. Sort by "Total (B/sec)" or "Average CPU" to identify the exact `<Process_Name.exe>` causing the bottleneck.
4. **Common Culprits:**
   - `SysMain` (Superfetch) service.
   - Windows Search Indexer.
   - Third-party Antivirus scans.

## 2. Slow Boot Times
**Resolution Path:**
1. Open Task Manager (`Ctrl + Shift + Esc`) -> **Startup** tab.
2. Disable non-essential applications.
3. Check for Fast Startup issues (Control Panel -> Power Options -> Choose what the power buttons do).
4. Use Sysinternals **Autoruns** for a deep dive into everything that loads at boot.
> 🔗 [Microsoft Sysinternals: Autoruns](https://learn.microsoft.com/en-us/sysinternals/downloads/autoruns)

## 3. Memory Leaks
**Symptom:** RAM usage climbs steadily until the system crashes, even when idle.
- Use **RAMMap** (Sysinternals) to see exactly how physical memory is being allocated.
- Check the `Non-paged pool` in Task Manager. If it's unusually high (e.g., > 1GB), it typically indicates a bad hardware driver.