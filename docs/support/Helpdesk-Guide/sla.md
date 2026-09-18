# SLA Management

An **SLA (Service Level Agreement)** is a contract between the IT department and the business outlining the expected reliability and speed of IT services.

## 1. Response SLA vs. Resolution SLA
- **Response SLA (Time to First Response):** The maximum time allowed before a technician acknowledges the ticket and contacts the user.
  - *Example:* P3 Normal tickets require a response within 4 business hours.
- **Resolution SLA (Time to Resolve):** The maximum time allowed to completely fix the issue or provide a permanent workaround.
  - *Example:* P3 Normal tickets must be resolved within 3 business days.

## 2. OLA (Operational Level Agreement)
While an SLA is between IT and the Business, an **OLA** is an agreement *between different IT teams*.
- *Example:* The Helpdesk (Tier 1) promises to escalate complex network tickets to the Network Team (Tier 3) within 1 hour. The Network Team promises to pick up those escalated tickets within 2 hours.

## 3. Handling SLA Breaches
When a ticket exceeds its allowed time, it is considered "Breached".
- **Prevention:** Use ITSM dashboards to monitor tickets that are at 75% of their SLA capacity (Warning state).
- **Communication:** If a breach is inevitable (e.g., waiting for a replacement part from Dell), communicate proactively with the user. A breached ticket with good communication is better than a breached ticket with silence.