# Software Updates & Patching

Keeping software updated is critical for security, but patches often fail to apply.

## 1. Locked Files During Update
**Symptom:** The update starts but rolls back, or gives an error like `Cannot overwrite file`.
- **Root Cause:** A file that the updater needs to replace is currently in use (locked) by the system or the user.
- **Troubleshooting:**
  1. Ensure the application is completely closed (check Task Manager for background processes or tray icons).
  2. If a DLL is locked by the OS, schedule the update to run immediately after a reboot before the user logs in.

## 2. Corrupted Temp Cache
Many updaters download the patch to the Windows Temp folder before executing. If the download was interrupted, the corrupted file stays there and blocks future attempts.
- **Fix (Clear Temp Folders):**
  1. Press `Win + R` -> type `%temp%` -> Delete all contents.
  2. Press `Win + R` -> type `temp` -> Delete all contents.
  3. Empty the Recycle Bin and retry the update.

## 3. Windows Update / WSUS Issues
If the software failing to update is Windows itself or Microsoft Office:
- **Symptom:** Updates are stuck at 0% downloading.
- **Fix (Reset Windows Update Agent):**
  Open an elevated Command Prompt:
  ```cmd
  net stop wuauserv
  net stop bits
  ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
  net start bits
  net start wuauserv
  ```
  *(This forces Windows to rebuild the update cache and check in with the WSUS/Microsoft servers again).*