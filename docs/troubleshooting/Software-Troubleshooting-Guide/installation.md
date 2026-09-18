# Software Installation Issues

When a software installation fails, especially during automated deployments (SCCM/Intune), you must rely on logs and exit codes rather than GUI pop-ups.

## 1. Common MSI Error Codes
Windows Installer (`.msi`) uses standard exit codes. Knowing the most common ones saves hours of troubleshooting.
- **`0`**: Success.
- **`3010`**: Success, but a reboot is required.
- **`1603`**: Fatal error during installation. (Generic error; requires log analysis. Often caused by lack of disk space, missing prerequisites, or folder permission issues).
- **`1618`**: Another installation is already in progress.
  - *Fix:* Open Task Manager and kill any hanging `msiexec.exe` processes, or restart the `Windows Installer` service.

## 2. Generating an Installation Log
If an installation fails with a generic `1603` error, you must run it again with verbose logging enabled to find the exact point of failure.

Open an elevated Command Prompt and run:
```cmd
msiexec /i "C:\Path\To\Software.msi" /L*V "C:\temp\install_log.txt"
```
- Open `install_log.txt` and search for the word `Return Value 3` (which indicates the action that failed). The lines immediately above it will tell you exactly what file or registry key caused the crash.

## 3. Silent Installation Switches
When pushing software via scripts or RMM tools, you need it to install without user interaction.
- **MSI Installers:** `msiexec /i app.msi /qn /norestart` (`/qn` = quiet no UI).
- **EXE Installers:** EXEs are wrappers and have varying silent switches depending on the packager (InstallShield, InnoSetup, Nullsoft).
  - Common switches to try: `/S`, `/silent`, `/quiet`, `-q`.
  - To find out, run from CLI: `app.exe /?` or `app.exe --help`.