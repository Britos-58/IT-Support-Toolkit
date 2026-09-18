# System Errors & BSOD (Blue Screen of Death)

## 1. Event Viewer Fundamentals
When an application crashes or a system reboots unexpectedly, the first step is checking the logs.

1. Open `eventvwr.msc`.
2. Navigate to **Windows Logs** -> **System** (for hardware/OS issues) or **Application** (for software crashes).
3. Filter Current Log by **Critical**, **Error**, and **Warning**.
4. Note the `<Event_ID>` and `<Source>`.

> 🔗 [EventID.Net](http://www.eventid.net/) - Excellent community resource for looking up specific Event IDs.

## 2. Diagnosing a BSOD
A Blue Screen of Death occurs when Windows encounters a critical error it cannot recover from.

**Information to Gather:**
- **Stop Code:** e.g., `IRQL_NOT_LESS_OR_EQUAL`, `MEMORY_MANAGEMENT`.
- **Faulting Module:** e.g., `ntoskrnl.exe`, `nvlddmkm.sys` (indicates NVIDIA driver).

**Standard Fixes:**
1. **Boot into Safe Mode:** Shift + Restart -> Troubleshoot -> Advanced Options -> Startup Settings.
2. **Update Drivers:** BSODs are overwhelmingly caused by outdated or corrupted drivers.
3. **Check RAM:** Run Windows Memory Diagnostic (`mdsched.exe`).

## 3. Analyzing Minidumps
For advanced troubleshooting, analyze the crash dump files located at `C:\Windows\Minidump\`.
- Use **WinDbg** (Windows Debugger) or **BlueScreenView** (NirSoft) to read the `.dmp` files and pinpoint the exact driver that caused the crash.
> 🔗 [Microsoft: Analyze crash dump files](https://learn.microsoft.com/en-us/troubleshoot/windows-client/performance/read-small-memory-dump-file)