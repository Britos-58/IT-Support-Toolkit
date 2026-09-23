# PowerShell Support Scripts

This directory contains automation and diagnostic scripts written in Windows PowerShell. These tools are designed to speed up Tier 1 and Tier 2 Helpdesk operations by automating data gathering and routine fixes.

## 🛠️ Scripts Included

- **`Get-SystemHealth.ps1`**: Gathers CPU, RAM, and System Uptime metrics.
- **`Get-DiskUsage.ps1`**: Checks all local drives for low disk space conditions.
- **`Test-NetworkConnectivity.ps1`**: Automates ping tests to the Local Gateway, DNS servers, and the Internet.
- **`Flush-DnsAndReset.ps1`**: Safely clears DNS cache and resets the network adapter.
- **`Get-InstalledSoftware.ps1`**: Extracts a list of all installed software on the local machine for auditing.

## ⚠️ Execution Policy
To run these scripts on a Windows machine, you may need to bypass the default execution policy. Run PowerShell as Administrator and execute:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```