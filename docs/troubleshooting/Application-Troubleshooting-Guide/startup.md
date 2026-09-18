# Application Startup Issues

When an application `<App_Name.exe>` is double-clicked but fails to open, hangs on the splash screen, or immediately closes, follow these diagnostic steps.

## 1. Check for Running Background Processes
**Symptom:** The user clicks the icon, nothing happens, but the app says "Already running" if clicked again.
- **Troubleshooting:**
  1. Open Task Manager (`Ctrl + Shift + Esc`).
  2. Go to the **Details** tab.
  3. Look for `<App_Name.exe>`.
  4. If it's stuck in a suspended state, right-click and select **End Task**, then try launching again.

## 2. Missing Dependencies & Runtimes
**Symptom:** The application throws an error like `MSVCP140.dll was not found` or prompts to install .NET Framework.
- **Troubleshooting:**
  - **DLL Errors:** Usually means the Microsoft Visual C++ Redistributable is missing or corrupted. Reinstall the version required by the vendor.
  - **Java Issues:** Ensure the correct version of the JRE (Java Runtime Environment) is installed and the `JAVA_HOME` environment variable is set correctly.

## 3. Permission Issues
**Symptom:** The app opens for the Local Admin but fails for standard users.
- **Troubleshooting:**
  - Right-click the shortcut -> **Run as Administrator**. If it opens, the application requires elevated privileges.
  - **Permanent Fix:** Modify the NTFS permissions of the application's installation folder (e.g., `C:\Program Files\<App_Name>`) to give the user `Modify` rights, or apply an Application Compatibility shim.

## 4. Antivirus / EDR Blocking
**Symptom:** The application starts but is immediately killed without an error message.
- **Troubleshooting:**
  - Check the local Antivirus or EDR (Endpoint Detection and Response, e.g., CrowdStrike, Defender) logs.
  - The executable might have been quarantined. Add an exclusion if the application is trusted.