# Storage Diagnostics

Storage issues fall into two categories: Capacity (running out of space) and Performance (slow read/write speeds).

## 1. Capacity Exhaustion
**Symptom:** Application installations fail, Windows Updates fail, or the OS refuses to boot.
- **Rule of Thumb:** A Windows OS drive (`C:\`) should always have at least 15% to 20% free space for the Paging File and temporary operations.
- **Troubleshooting:**
  - Run **Disk Cleanup** (`cleanmgr.exe`) as Administrator to clear old Windows Update files.
  - Use visual tools like **TreeSize Free** or **WinDirStat** to quickly identify which folders are consuming the most space.

## 2. Disk I/O Bottlenecks (100% Active Time)
**Symptom:** Task Manager shows Disk usage at 100%, even though the Read/Write speeds are very low (e.g., 2 MB/s).
- **Troubleshooting:**
  - Open **Resource Monitor** (`resmon.exe`) -> **Disk** tab.
  - Look at the **Disk Activity** panel and sort by `Total (B/sec)`. This will tell you exactly which `.exe` is thrashing the disk.
  - *Common culprits:* Antivirus scans, Windows Search Indexer, or failing HDD sectors.

## 3. SMART Status & Failing Drives
**Symptom:** Files take a long time to open, or the system freezes randomly.
- **Root Cause:** The physical drive is failing.
- **Troubleshooting:**
  - Open Command Prompt and check the **S.M.A.R.T.** (Self-Monitoring, Analysis, and Reporting Technology) status:
    ```cmd
    wmic diskdrive get status
    ```
  - If it returns anything other than `OK` (like `Pred Fail`), **immediately back up the data**. The drive is about to die.
  - Run `chkdsk /f /r` to attempt to repair bad sectors.