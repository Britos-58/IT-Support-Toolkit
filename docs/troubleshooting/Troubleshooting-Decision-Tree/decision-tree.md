# IT Support Decision Tree

Use this logic flow when triaging a new incoming ticket (`<Ticket_ID>`) or live support call. Follow the paths based on the user's answers.

## 🟢 Phase 1: Initial Triage (Scope & Impact)

**1. Is the issue affecting multiple users or just one?**
- ➡️ **Multiple Users / Entire Site:** Stop Tier 1 troubleshooting. Check monitoring dashboards. Declare a Major Incident and escalate to **Tier 3 / NOC**.
- ➡️ **Single User:** Proceed to Step 2.

**2. What is the primary symptom?**
- ➡️ *Cannot log in / Access denied* ➔ Go to **Authentication Flow**.
- ➡️ *No Internet / Cannot reach a specific server* ➔ Go to **Network Flow**.
- ➡️ *Application is crashing / Error message* ➔ Go to **Software Flow**.
- ➡️ *Computer won't turn on / Blue Screen* ➔ Go to **Hardware/OS Flow**.

---

## 🔐 Phase 2A: Authentication Flow

**1. Is the account locked out in Active Directory / Entra ID?**
- ➡️ **Yes:** Unlock account, force password reset if required, and verify resolution.
- ➡️ **No:** Proceed to Step 2.

**2. Are they using the correct credentials and MFA?**
- ➡️ **No:** Guide user to reset password / re-register MFA device.
- ➡️ **Yes, but still failing:** Check if the user has the correct Security Group permissions. If permissions are missing, route to **IAM (Identity & Access Management)**.

---

## 🌐 Phase 2B: Network Flow

**1. Is the device connected to the network? (Check IP via `ipconfig`)**
- ➡️ **No (169.254.x.x or Media Disconnected):** Check physical cable or Wi-Fi connection. 
- ➡️ **Yes (Valid IP):** Proceed to Step 2.

**2. Can the device ping the Default Gateway?**
- ➡️ **No:** Local network issue. Check switch port or reboot router.
- ➡️ **Yes:** Proceed to Step 3.

**3. Can the device resolve DNS? (e.g., `nslookup google.com`)**
- ➡️ **No:** Flush DNS (`ipconfig /flushdns`). If still failing, escalate to **Network Team**.
- ➡️ **Yes:** The issue is likely firewall or application-specific. Route to **Security / App Support**.

---

## 💻 Phase 2C: Hardware / OS Flow

**1. Does the machine POST (Power On Self Test)?**
- ➡️ **No (No display, beeping sounds):** Hardware failure. Dispatch field tech or order replacement part.
- ➡️ **Yes, but Windows fails to load:** Boot into Safe Mode. Run Startup Repair.
- ➡️ **Yes, Windows loads but crashes (BSOD):** Analyze Minidump. Update drivers. If hardware failure is suspected, escalate to **Tier 2 Desktop Support**.