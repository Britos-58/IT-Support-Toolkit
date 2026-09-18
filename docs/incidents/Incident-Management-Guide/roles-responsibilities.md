# Incident Roles & Responsibilities

During a Major Incident (P1/P2), chaos is the enemy. We use a structured Incident Command System (ICS) to ensure everyone knows exactly what their job is.

## 1. Incident Commander (IC)
The IC is the single source of truth and authority during an incident.
- **Responsibilities:**
  - Coordinates the entire response.
  - Makes the final call on destructive actions (e.g., "Yes, reboot the core router").
  - **Does NOT troubleshoot:** The IC must keep a high-level view. If the IC starts typing commands, they lose sight of the overall incident.
> 🔗 [PagerDuty - What is an Incident Commander?](https://response.pagerduty.com/training/incident_commander/)

## 2. Subject Matter Expert (SME) / Resolver
The engineers actively working on the problem (Network Admin, Database Admin, Cloud Engineer).
- **Responsibilities:**
  - Investigates the root cause and proposes fixes.
  - Executes commands and applies workarounds.
  - Reports status back to the Incident Commander.

## 3. Communications Lead
Manages the flow of information to the rest of the company and external customers.
- **Responsibilities:**
  - Drafts and sends Statuspage updates and mass emails.
  - Shields the SMEs and IC from executives asking "Is it fixed yet?".

## 4. Scribe
The historian of the incident.
- **Responsibilities:**
  - Maintains a real-time timeline in the war room chat (e.g., Slack/Teams).
  - Notes exactly when commands were executed and their outcomes.
  - This timeline is crucial for writing the Post-Incident Report (PIR) later.