# Email Troubleshooting Guide

Welcome to the Email Troubleshooting Guide. Email remains the most critical communication tool in any enterprise. This module covers diagnosing and resolving issues related to email clients (specifically Microsoft Outlook), authentication, and mail flow (Microsoft 365 / Exchange).

## 📂 Table of Contents
- [Client Connectivity](connectivity.md) - Outlook "Disconnected" states, OST file corruption, and Autodiscover.
- [Authentication Issues](authentication.md) - Constant password prompts, MFA loops, and Credential Manager.
- [Mail Delivery & Flow](delivery.md) - Non-Delivery Reports (NDRs), Message Trace, and Spam/Phishing triage.

## 🛠️ Essential Email Diagnostic Tools
- **Outlook Connection Status:** Hold `Ctrl` + Right-click the Outlook icon in the system tray -> Select *Connection Status*.
- **Exchange Admin Center / Message Trace:** Used by Tier 2/3 to track exactly where an email is in the pipeline.
- **MXToolbox:** The industry standard for checking MX records, SPF, DKIM, and IP blacklists.

> 🔗 **External Resource:** [MXToolbox SuperTool](https://mxtoolbox.com/)