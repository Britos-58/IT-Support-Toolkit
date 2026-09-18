# Windows Common Issues

## 1. Corrupted System Files
**Symptoms:** Applications crashing randomly, Windows features failing to load, or unexplained system instability on hostname `[Hostname]`.

**Standard Fix (Run as Administrator):**
1. Check and repair system files:
   ```cmd
   sfc /scannow
   ```
2. If SFC fails, repair the Windows Image using DISM:
   ```cmd
   DISM /Online /Cleanup-Image /RestoreHealth
   ```
> 🔗 [Microsoft Docs: Repair a Windows Image](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/repair-a-windows-image)

## 2. Group Policy Not Applying
**Symptoms:** User `[Username]` is not receiving mapped drives, printers, or security settings pushed by the Domain Controller.

**Diagnostic Steps:**
1. Force a Group Policy update:
   ```cmd
   gpupdate /force
   ```
2. Check which policies are currently applied:
   ```cmd
   gpresult /r
   ```
   *(For a detailed HTML report: `gpresult /h C:\temp\gp-report.html`)*

## 3. Corrupted User Profile
**Symptoms:** User logs in and receives a "We can't sign in to your account" or loads into a temporary profile.

**Resolution Path:**
1. Check Registry under `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList`.
2. Look for the user's SID ending with `.bak`.
3. Rename or delete the corrupted profile key (ensure data is backed up from `C:\Users\[Username]` first).