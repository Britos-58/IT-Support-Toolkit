# Software Compatibility

As OS versions upgrade, legacy software often breaks. Identifying compatibility issues is key to keeping older business operations running.

## 1. Architecture: 32-bit vs 64-bit
- **64-bit OS (x64):** Can run both 64-bit and 32-bit applications.
  - 64-bit apps install to `C:\Program Files\`.
  - 32-bit apps install to `C:\Program Files (x86)\`.
- **Troubleshooting:** 
  - If a plugin or driver is 32-bit, the host application MUST also be 32-bit. (e.g., A 32-bit Java plugin will not work inside a 64-bit web browser).
  - Always verify architecture when integrating two pieces of software.

## 2. Legacy Software on Modern OS
**Symptom:** An application designed for Windows 7 throws visual glitches, fails to save files, or crashes on launch in Windows 11.
- **Troubleshooting (Compatibility Mode):**
  1. Right-click the `.exe` or shortcut -> **Properties**.
  2. Go to the **Compatibility** tab.
  3. Check **Run this program in compatibility mode for:** and select an older OS (e.g., Windows 7).
  4. If the app fails to save data, it might be trying to write to `C:\` root (which modern Windows blocks). Check **Run this program as an administrator**.

## 3. Dependency Hell (Java & .NET)
Many enterprise applications rely on specific, older versions of frameworks.
- **Symptom:** App fails to launch with a Java error, even though the latest Java is installed.
- **Troubleshooting:** The app might require an older version (e.g., JRE 8). You can have multiple Java versions installed. Ensure the application's specific configuration file points to the correct `javaw.exe` path, rather than the system's global `JAVA_HOME` variable.