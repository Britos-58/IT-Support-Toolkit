# Process Management

When an application freezes, IT professionals use process management tools to force-quit the application without restarting the entire server or PC.

## 1. Task Manager vs. Command Line
While Task Manager is great, the Command Line is faster and works over remote PowerShell sessions.

**Find a running process:**
```powershell
Get-Process -Name "chrome"
```

**Kill a process gracefully:**
```powershell
Stop-Process -Name "chrome"
```

**Force kill a stubborn process by PID (Process ID):**
```cmd
taskkill /PID 4512 /F
```
*(The `/F` switch stands for Force).*

## 2. Sysinternals Process Explorer
For advanced troubleshooting, Microsoft provides **Process Explorer** (part of the Sysinternals suite).
- It shows parent-child process relationships (e.g., seeing that a suspicious `cmd.exe` was launched by a Word document).
- It allows you to right-click a process and select **Search Online** to quickly verify if a strange `.exe` is legitimate or malware.
- It can verify digital signatures of running applications.

> 🔗 **External Resource:** [Microsoft Sysinternals - Process Explorer](https://learn.microsoft.com/en-us/sysinternals/downloads/process-explorer)