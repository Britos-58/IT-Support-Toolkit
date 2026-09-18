# The Ticket Lifecycle

Every ticket must follow a strict status workflow. Leaving a ticket in the wrong status skews reporting metrics and SLA calculations.

## Standard Status Workflow

1. **New / Open**
   - The ticket has been created by the user or an automated alert, but no technician has looked at it yet.
   - *Action:* Triage the ticket, assign a priority, and assign it to a technician.

2. **Assigned / In Progress**
   - A technician has taken ownership of the ticket and is actively working on it.
   - *Rule:* Never leave a ticket in "New" if you are working on it. Always assign it to yourself to prevent duplicated effort.

3. **Pending / Waiting on Customer**
   - The technician has asked the user for more information (e.g., "What is your computer name?") or is waiting for the user to reboot.
   - *SLA Impact:* In most ITSM systems, placing a ticket in this status **pauses the SLA clock**.
   - *Rule:* If the user does not reply after 3 attempts (usually over 3-5 days), the ticket can be closed due to lack of response.

4. **On Hold / Waiting on Vendor**
   - The issue requires a third-party vendor (e.g., Microsoft, Dell, ISP) to act before IT can proceed.

5. **Resolved**
   - The technician has applied a fix and believes the issue is solved.
   - *Rule:* Resolved is NOT Closed. The user receives an email asking them to confirm the fix.

6. **Closed**
   - The user has confirmed the fix, or an automated timer (usually 3 days after "Resolved") has permanently locked the ticket. Closed tickets cannot be reopened; a new ticket must be created if the issue returns.