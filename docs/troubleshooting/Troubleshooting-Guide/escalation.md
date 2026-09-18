# Escalation Path & Procedures

Not every issue can or should be resolved at Tier 1 (Helpdesk/First-line Support). Escalation is a normal part of IT Operations to ensure SLAs (Service Level Agreements) are met.

## 🚦 When to Escalate

Escalate a ticket to the next tier if any of the following conditions are met:
1. **Timeboxing:** You have spent more than `[Max_Time_e.g._30_mins]` troubleshooting without identifying the root cause.
2. **Permissions:** The fix requires administrative privileges (e.g., Domain Admin, Firewall Admin) that you do not possess.
3. **Scope:** The issue affects a critical business system, an entire site, or VIP personnel.
4. **Knowledge Gap:** The issue requires specialized knowledge (e.g., advanced database queries, core network routing).

## 🏢 Support Tiers

- **Tier 1 (Helpdesk / Service Desk):** Initial triage, password resets, basic hardware/software troubleshooting.
- **Tier 2 (Desktop Support / SysAdmin):** Complex OS issues, advanced software troubleshooting, local network issues.
- **Tier 3 (Engineers / Specialists):** Server infrastructure, cloud architecture, core network, vendor support.

## 📝 Escalation Checklist

Before escalating a ticket (`<Ticket_ID>`) to Tier 2/3, ensure the following information is documented in the ticket notes:

- [ ] Exact error messages / Screenshots attached.
- [ ] Steps already taken to troubleshoot (What have you tried?).
- [ ] Logs collected and attached.
- [ ] Impact and Urgency accurately set.
- [ ] User availability for the next support tier.

> 🔗 **External Resource:** [Atlassian ITIL Incident Management & Escalation](https://www.atlassian.com/itsm/incident-management)