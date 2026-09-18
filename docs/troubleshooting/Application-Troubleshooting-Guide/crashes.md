# Application Crashes (APPCRASH)

If an application closes unexpectedly while the user is actively working, the OS will usually log the reason.

## 1. Using Event Viewer (Event ID 1000)
When a Windows application crashes, it generates an Event ID 1000 in the Application log.

**How to find it:**
1. Open Event Viewer (`eventvwr.msc`).
2. Navigate to **Windows Logs** -> **Application**.
3. Filter Current Log by **Error** and look for **Event ID 1000** (Application Error).

**What to look for in the log:**
- **Faulting application name:** `[App_Name.exe]`
- **Faulting module name:** This is the crucial part. 
  - If it's `ntdll.dll` or `kernel32.dll`, it might be an OS-level issue.
  - If it's `nvwgf2umx.dll`, it's an NVIDIA graphics driver issue.
- **Exception code:** e.g., `0xc0000005` (Access Violation - the app tried to read memory it wasn't allowed to).

## 2. Safe Mode & Add-ins
**Symptom:** Applications like Microsoft Word or Outlook crash on launch or during specific actions.
- **Troubleshooting:**
  - Launch the application in Safe Mode (e.g., `winword.exe /safe` or `outlook.exe /safe`).
  - If it works perfectly in Safe Mode, the crash is caused by a third-party Add-in or Plugin. Disable them one by one to isolate the culprit.

## 3. Clean Boot Isolation
If the crash is sporadic, it might be conflicting with another background service.
- Run `msconfig`.
- Go to the **Services** tab, check **Hide all Microsoft services**, and click **Disable all**.
- Reboot and test. If the app stops crashing, a third-party service is interfering.