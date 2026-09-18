# Severity & Priority Matrix

Priority determines the SLA (Service Level Agreement) for response and resolution times. Priority is calculated by combining **Impact** (how much of the business is affected) and **Urgency** (how quickly the business needs it fixed).

## 📊 The Priority Matrix

| | High Impact (Company/Site) | Medium Impact (Dept/Team) | Low Impact (Single User) |
| :--- | :--- | :--- | :--- |
| **High Urgency** | **P1 - Critical** | P2 - High | P3 - Normal |
| **Medium Urgency**| P2 - High | P3 - Normal | P4 - Low |
| **Low Urgency** | P3 - Normal | P4 - Low | P4 - Low |

## 🚨 Priority Definitions & SLAs

### P1 - Critical (Major Incident)
- **Definition:** Complete loss of a core business service. Financial or reputational damage is occurring.
- **Example:** The main database is down; the entire call center cannot receive calls; website is offline.
- **Response SLA:** 15 Minutes (24/7)
- **Action:** Triggers the Major Incident Management (MIM) protocol.

### P2 - High
- **Definition:** Severe degradation of a service, or a critical system is down but a workaround exists.
- **Example:** One of two redundant internet lines failed; a department cannot access their shared drive.
- **Response SLA:** 1 Hour

### P3 - Normal
- **Definition:** Standard IT issues affecting single users or non-critical systems.
- **Example:** User needs a password reset; a single laptop has a blue screen; a local printer is jammed.
- **Response SLA:** 4 Business Hours

### P4 - Low
- **Definition:** Requests for information, minor cosmetic issues, or tasks scheduled for the future.
- **Example:** "How do I use this feature in Excel?"; requesting a new mouse.
- **Response SLA:** 24 Business Hours