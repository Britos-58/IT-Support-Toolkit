# The Incident Lifecycle

Every ticket classified as an "Incident" must follow this standard lifecycle to ensure consistent handling and resolution.

## 1. Identification & Logging
- **Detection:** Incidents are identified via monitoring alerts (e.g., Datadog, Zabbix) or user reports.
- **Logging:** Every incident MUST have a ticket. If a user stops you in the hallway, a ticket must still be created.
- **Details:** Capture the "Who, What, Where, and When".

## 2. Categorization & Prioritization
- **Categorization:** Assign the correct service category (e.g., `Network`, `Hardware`, `SaaS Application`). This routes the ticket to the correct team.
- **Prioritization:** Determine the Priority (P1 to P4) based on the [Severity Matrix](severity.md).

## 3. Initial Diagnosis (Tier 1)
- The Service Desk performs initial troubleshooting using the Knowledge Base and standard operating procedures.
- If the issue cannot be resolved within the agreed timebox (e.g., 15-30 minutes), it moves to the next step.

## 4. Escalation
- Route the ticket to Tier 2, Tier 3, or external vendors if specialized access or knowledge is required. See [Escalation Procedures](escalation.md).

## 5. Investigation & Diagnosis
- Deep-dive troubleshooting by the assigned engineering teams.
- Workarounds are actively sought (e.g., "The main printer is down, route all print jobs to the backup printer").

## 6. Resolution & Recovery
- The fix or workaround is applied.
- The technician verifies with the user or monitoring tools that the service is fully restored.

## 7. Closure
- The ticket is marked as `Resolved`.
- The user has a window (usually 3 days) to reopen the ticket if the issue persists. After that, it moves to `Closed`.
- For P1/P2 incidents, a Post-Incident Report (PIR) is generated.