# Memory (RAM) Diagnostics

**RAM (Random Access Memory)** is the short-term working space of the computer. When RAM runs out, the system uses the hard drive as temporary memory, causing massive slowdowns.

## 1. Memory Exhaustion & The Paging File
**Symptom:** Switching between open applications takes several seconds, and the hard drive activity light is constantly solid.
- **Root Cause:** The system has used all physical RAM and is now using the **Paging File** (Virtual Memory on the SSD/HDD). Since disks are much slower than RAM, performance tanks.
- **Troubleshooting:**
  - Open Task Manager -> **Performance** tab -> **Memory**.
  - Look at **Committed** memory. If it is significantly higher than the physical RAM installed, the system desperately needs a RAM upgrade or the user needs to close applications.

## 2. Memory Leaks
**Symptom:** A specific application starts using 200MB of RAM, but over a few hours, it climbs to 4GB and eventually crashes.
- **Root Cause:** Poorly written software is requesting memory from the OS but failing to release it back when it's done.
- **Troubleshooting:** 
  - The only temporary fix is to restart the application or service. 
  - The permanent fix is applying a software patch from the vendor.

## 3. Faulty RAM Sticks (Hardware)
**Symptom:** Random BSODs (Blue Screens of Death) with errors like `MEMORY_MANAGEMENT` or `PAGE_FAULT_IN_NONPAGED_AREA`.
- **Troubleshooting:** 
  - Run the built-in **Windows Memory Diagnostic** (`mdsched.exe`) and reboot. It will stress-test the RAM and report hardware failures.