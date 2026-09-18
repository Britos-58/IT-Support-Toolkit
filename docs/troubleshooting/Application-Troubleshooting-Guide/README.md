# Application Troubleshooting Guide

Welcome to the Application Troubleshooting Guide. This module focuses on diagnosing desktop and client-server applications that fail to launch, crash unexpectedly, or perform poorly in a Windows environment.

## 📂 Table of Contents
- [Startup Issues](startup.md) - Application fails to open or hangs on the splash screen.
- [Application Crashes](crashes.md) - Sudden closures, APPCRASH, and Event Viewer logs.
- [Configuration & User Data](configuration.md) - Corrupted settings, AppData, and Registry keys.
- [Performance & Freezing](performance.md) - High resource usage, memory leaks, and "Not Responding" states.

## 🛠️ Essential Application Diagnostic Tools
Before escalating an application issue to the developers or vendors, gather data using these tools:
- **Event Viewer (`eventvwr.msc`)**: Specifically the *Windows Logs -> Application* section.
- **Process Monitor (ProcMon)**: An advanced tool from Sysinternals that shows real-time file system, Registry, and process/thread activity.
- **Task Manager / Resource Monitor**: To check if the application is suspended or consuming excessive resources.

> 🔗 **External Resource:** [Microsoft Sysinternals - Process Monitor](https://learn.microsoft.com/en-us/sysinternals/downloads/procmon)