# Software Lifecycle & Troubleshooting Guide

Welcome to the Software Troubleshooting Guide. While the Application guide focuses on runtime errors (crashes and freezes), this module focuses on the **Software Lifecycle**: deployment, installation, patching, and compatibility in an enterprise environment.

## 📂 Table of Contents
- [Installation Issues](installation.md) - MSI error codes, silent installs, and logging.
- [Configuration & Licensing](configuration.md) - Enterprise deployments, MST files, and registry settings.
- [Updates & Patching](updates.md) - Failed updates, locked files, and cache clearing.
- [Compatibility](compatibility.md) - 32-bit vs 64-bit architecture, legacy apps, and Compatibility Mode.

## 🛠️ Essential Software Deployment Tools
- **msiexec**: The Windows Installer executable. Essential for logging and silent installations.
- **Task Manager / Services**: To identify if another installation is currently running (`msiserver`).
- **Event Viewer (`eventvwr.msc`)**: *Windows Logs -> Setup* and *Application* for deployment failure codes.

> 🔗 **External Resource:** [Microsoft - MsiExec.exe command-line options](https://learn.microsoft.com/en-us/windows/win32/msi/command-line-options)