# Escalation Procedures

Escalation is a healthy and necessary part of IT operations. It ensures that tickets do not languish in queues when they require advanced skills or authority.

## 1. Functional Escalation
Moving a ticket to a team with different or more advanced technical skills.
- **Tier 1 (Helpdesk) ➔ Tier 2 (Desktop Support/SysAdmin):** When the issue requires physical presence, local admin rights, or exceeds the 30-minute troubleshooting timebox.
- **Tier 2 ➔ Tier 3 (Engineering/Network/Cloud):** When the issue involves infrastructure-wide changes, core routing, or backend database modifications.
- **Rule of Thumb:** Never escalate without documenting the exact steps already taken and the logs gathered.

## 2. Hierarchical Escalation
Moving a ticket to management due to business impact, SLA breaches, or organizational roadblocks.
- **Trigger:** A P3 ticket has breached its resolution SLA, and the user is complaining to their manager.
- **Action:** Escalate to the IT Support Manager to allocate more resources or communicate directly with the business stakeholder.

## 3. Major Incident Management (MIM) Protocol
When a **P1 - Critical** incident is declared, standard functional escalation is bypassed.

1. **Declare:** The first engineer to identify the P1 declares a Major Incident and notifies the Incident Commander (IC).
2. **War Room:** A dedicated bridge call (Teams/Zoom) and chat channel are opened.
3. **Roles:**
   - **Incident Commander:** Leads the call, makes decisions, and coordinates teams. Does NOT touch the keyboard.
   - **Scribe:** Documents a timeline of events and actions taken in real-time.
   - **Communications Lead:** Sends updates to the company (e.g., "IT is aware of the email outage...") every 30-60 minutes.
   - **Subject Matter Experts (SMEs):** The engineers actually fixing the issue.