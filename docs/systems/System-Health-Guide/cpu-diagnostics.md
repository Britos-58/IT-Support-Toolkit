# CPU Diagnostics

The **CPU (Central Processing Unit)** is the brain of the computer. When it reaches 100% utilization, the entire system becomes unresponsive.

## 1. High CPU Utilization
**Symptom:** The system is sluggish. Mouse movements lag, and applications take a long time to open.
- **Troubleshooting:**
  1. Open Task Manager (`Ctrl + Shift + Esc`) -> **Details** tab.
  2. Click the **CPU** column to sort by highest usage.
  3. Identify the process. If it is a known application (e.g., Google Chrome, Excel), it might be caught in an infinite loop. Terminate the process.
  4. If the process is `System Idle Process` running at 90%, **this is normal**. It represents the percentage of the CPU that is *not* being used.

## 2. Thermal Throttling
**Symptom:** The computer runs fine for the first 10 minutes, then suddenly becomes incredibly slow. The fan is extremely loud.
- **Root Cause:** The CPU is overheating. To prevent physical melting, the motherboard automatically reduces the CPU's clock speed (throttling).
- **Troubleshooting:**
  - Check physical airflow (dust in the laptop vents, broken fans).
  - Use third-party tools like HWMonitor or Core Temp to verify if the CPU temperature is hitting 90°C+.

## 3. System Interrupts
**Symptom:** Task Manager shows a process called `System interrupts` consuming 20%+ of the CPU.
- **Root Cause:** This is not a real process; it is a placeholder indicating that hardware components (like a failing hard drive, bad Wi-Fi card, or corrupted driver) are constantly interrupting the CPU to ask for attention.
- **Troubleshooting:** Update BIOS and hardware drivers. Disconnect external USB peripherals one by one to isolate the failing hardware.