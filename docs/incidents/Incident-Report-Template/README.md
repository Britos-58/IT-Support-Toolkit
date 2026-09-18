# Post-Incident Report (PIR) Template

*Use this template to document P1 and P2 incidents after they have been resolved. The goal is to understand what happened and prevent it from happening again, not to assign blame.*

---

## 📄 Executive Summary
- **Incident ID:** `[Ticket_Number]`
- **Date & Time of Incident:** `[YYYY-MM-DD HH:MM UTC]`
- **Severity:** `[P1/P2]`
- **Incident Commander:** `[Name]`
- **Status:** `[Resolved / Closed]`

**Brief Description:**
*(Provide a 2-3 sentence summary of the impact and the resolution. E.g., "At 10:00 AM, the primary database went offline due to a storage capacity exhaustion, causing the ERP system to be unavailable for 45 minutes. Service was restored by expanding the storage volume.")*

---

## ⏱️ Timeline of Events
*(Format: `HH:MM` - Action/Event)*
- **09:45** - Monitoring system triggered an alert for high disk usage on `DB-PROD-01`.
- **10:00** - Users began reporting inability to log in. Helpdesk started receiving calls.
- **10:05** - Incident escalated to Tier 3 Database Team. P1 declared.
- **10:15** - Root cause identified (Transaction logs filled the drive).
- **10:35** - Storage volume expanded from 500GB to 1TB. Services restarted.
- **10:45** - Full system functionality verified. Incident mitigated.

---

## 🔍 Root Cause Analysis (5 Whys)
1. **Why did the ERP system go down?** Because it could not write to the database.
2. **Why couldn't it write to the database?** Because the `D:\` drive on the database server was 100% full.
3. **Why was the drive full?** Because the SQL transaction logs grew unexpectedly over the weekend.
4. **Why did the logs grow unexpectedly?** A scheduled backup job failed to truncate the logs.
5. **Why did the backup job fail?** The service account password expired on Friday evening.

**Root Cause:** Expired service account password prevented log truncation, leading to disk exhaustion.

---

## 🛠️ Resolution & Recovery
- Expanded the VMware datastore and Windows volume by 500GB to immediately restore service.
- Updated the service account password and manually ran the backup job to truncate logs.

---

## 🛡️ Action Items (Preventative Measures)
*What are we changing so this never happens again?*

| Action Item | Owner | Target Date | Ticket ID |
| :--- | :--- | :--- | :--- |
| Set service account passwords to "Never Expire" (with security approval). | IAM Team | `[Date]` | `TASK-101` |
| Lower the Datadog disk space alert threshold from 95% to 85%. | Monitoring Team | `[Date]` | `TASK-102` |
| Implement automated log truncation script on high-volume servers. | DBA Team | `[Date]` | `TASK-103` |