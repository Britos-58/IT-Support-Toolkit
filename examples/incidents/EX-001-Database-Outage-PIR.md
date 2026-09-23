# EX-001: Database Outage PIR

## 📄 Executive Summary
- **Incident ID:** INC-10495
- **Date & Time of Incident:** 2026-09-23 10:00 UTC
- **Severity:** P1 - Critical
- **Incident Commander:** Gabriel Lopes
- **Status:** Resolved

**Brief Description:**
At 10:00 AM, the primary database (`DB-PROD-01`) went offline due to storage capacity exhaustion, causing the ERP system to be completely unavailable for 45 minutes. Service was restored by expanding the VMware storage volume and truncating the transaction logs.

## ⏱️ Timeline of Events
- **09:45** - Datadog monitoring triggered an alert for 98% disk usage on `DB-PROD-01`.
- **10:00** - Users began reporting inability to log in to the ERP. Helpdesk received 40+ calls.
- **10:05** - Major Incident declared. Escalated to Tier 3 Database Team.
- **10:15** - Root cause identified: SQL transaction logs filled the `D:\` drive.
- **10:35** - Storage volume expanded from 500GB to 1TB. SQL Services restarted.
- **10:45** - Full system functionality verified by QA. Incident mitigated.

## 🔍 Root Cause Analysis (5 Whys)
1. **Why did the ERP system go down?** Because it could not write to the database.
2. **Why couldn't it write to the database?** Because the `D:\` drive on the database server was 100% full.
3. **Why was the drive full?** Because the SQL transaction logs grew unexpectedly over the weekend.
4. **Why did the logs grow unexpectedly?** A scheduled backup job failed to truncate the logs.
5. **Why did the backup job fail?** The service account password expired on Friday evening.

**Root Cause:** Expired service account password prevented log truncation, leading to disk exhaustion.

## 🛠️ Resolution & Recovery
- Expanded the VMware datastore and Windows volume by 500GB to immediately restore service.
- Updated the service account password and manually ran the backup job to truncate logs.

## 🛡️ Action Items (Preventative Measures)
| Action Item | Owner | Target Date | Ticket ID |
| :--- | :--- | :--- | :--- |
| Set service account passwords to "Never Expire" (with security approval). | IAM Team | 2026-09-25 | TASK-101 |
| Lower the Datadog disk space alert threshold from 95% to 85%. | Monitoring Team | 2026-09-24 | TASK-102 |
| Implement automated log truncation script on high-volume servers. | DBA Team | 2026-10-01 | TASK-103 |