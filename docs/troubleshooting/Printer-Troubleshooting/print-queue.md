# Print Queue & Spooler Issues

When a user hits "Print" but nothing happens, and they hit it 10 more times, they create a traffic jam in the Print Queue. One corrupted document will block all subsequent jobs.

## 1. The Stuck Print Job
**Symptom:** The print queue shows a document with the status `Error - Printing` or `Deleting...`, but it never disappears.

**Standard Fix (The Spooler Reset):**
You cannot delete the file because the Windows Print Spooler service is holding it open. You must stop the service, delete the raw files, and start the service again.

Run the following commands in an **Elevated (Administrator) Command Prompt**:

```cmd
:: 1. Stop the Print Spooler service
net stop spooler

:: 2. Delete all stuck print jobs (.SHD and .SPL files)
del /Q /F /S "%systemroot%\System32\Spool\Printers\*.*"

:: 3. Start the Print Spooler service again
net start spooler
```

## 2. Spooler Crashing
**Symptom:** The user tries to add a printer or open Devices and Printers, and gets an error: `The local print spooler service is not running`.
- **Troubleshooting:**
  - Open `services.msc`, find **Print Spooler**, and set it to **Automatic** and click **Start**.
  - If the service starts but immediately stops (crashes), there is a corrupted printer driver installed.
  - You must boot into Safe Mode or use the Registry to manually remove the corrupted driver from `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Environments\Windows x64\Drivers`.

## 3. Clearing the Queue via GUI
For users who do not have Administrator rights to run the command line fix:
1. Open **Devices and Printers**.
2. Right-click the printer -> **See what's printing**.
3. Click the **Printer** menu at the top -> **Cancel All Documents**.
*(Note: This is less effective than the command-line method for deeply stuck jobs).*