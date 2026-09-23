# PC Diagnostic Checklist

**Purpose:** A standardized approach to isolating computer performance and hardware issues.

## 1. Initial Triage
- [ ] Ask the user: "When did this start?" and "Has anything changed recently?"
- [ ] Check System Uptime (Task Manager -> Performance). If > 7 days, perform a reboot.
- [ ] Verify OS version and pending Windows Updates.

## 2. Hardware Checks
- [ ] Run `Get-SystemHealth.ps1` to check CPU and RAM usage.
- [ ] Check local disk space (Must have > 15% free on `C:\`).
- [ ] Check S.M.A.R.T. status of the hard drive (`wmic diskdrive get status`).
- [ ] Check Device Manager (`devmgmt.msc`) for missing drivers (yellow triangles).

## 3. OS & Software Checks
- [ ] Review Event Viewer (`eventvwr.msc`) -> System/Application logs for critical errors.
- [ ] Run `sfc /scannow` if system file corruption is suspected.
- [ ] Check Task Manager Startup tab and disable unnecessary bloatware.
- [ ] Run a quick Antivirus/EDR scan to rule out malware.