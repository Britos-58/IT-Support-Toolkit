# Printer & Peripheral Troubleshooting Guide

Welcome to the Printer Troubleshooting Guide. Printers are notorious for causing Helpdesk tickets. This module provides a structured approach to resolving local (USB) and network (IP/Print Server) printer issues in a corporate environment.

## 📂 Table of Contents
- [Connectivity & "Offline" Status](connectivity.md) - Network IPs, SNMP, and physical connections.
- [Print Queue & Spooler](print-queue.md) - Clearing stuck jobs and restarting the Print Spooler.
- [Driver Issues](drivers.md) - PCL vs. PostScript, Type 3/4 drivers, and clean removals.

## 🛠️ Essential Printer Diagnostic Tools
- **Print Management (`printmanagement.msc`)**: The central Windows console for managing all installed printers, drivers, and ports.
- **Printer Web Interface (EWS)**: Accessing the printer's IP address via a web browser to check toner levels, paper jams, and network settings.
- **Print Server Console**: If using a centralized print server (e.g., Windows Server Print and Document Services or PaperCut).

> 🔗 **External Resource:** [Microsoft - Fix printer connection and printing problems in Windows](https://support.microsoft.com/en-us/windows/fix-printer-connection-and-printing-problems-in-windows-fb830bff-7702-6349-33cd-9443fe985050)