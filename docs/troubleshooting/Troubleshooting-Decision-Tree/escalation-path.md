# Routing & Escalation Matrix

When the Decision Tree dictates an escalation, use this routing matrix to assign the ticket to the correct resolution group. Never escalate a ticket without documenting the steps you have already taken.

## 📋 Escalation Requirements
Before reassigning a ticket, ensure the following fields are filled:
- **Work Notes:** Specific steps taken (e.g., *"Ran ipconfig, pinged gateway, verified AD account status"*).
- **User Availability:** When can the next tier contact the user?
- **Asset ID:** `[Asset_Tag]` attached to the ticket.

## 🔀 Routing Matrix

| Issue Category | Condition for Escalation | Target Resolution Group | SLA Priority |
| :--- | :--- | :--- | :--- |
| **Account Access** | User requires permissions not granted to Tier 1. | `IAM_Admin_Group` | P3 - Normal |
| **Networking** | Entire subnet down / Switch failure. | `Network_Engineering` | P1 - Critical |
| **Networking** | Single user port blocked by NAC / Firewall. | `Network_Security` | P3 - Normal |
| **Hardware** | Laptop requires physical motherboard replacement. | `Field_Services` | P3 - Normal |
| **Software/OS** | Persistent BSOD after driver updates. | `Tier2_Desktop_Support` | P2 - High |
| **SaaS Apps** | Bug within the company's proprietary web app. | `App_Dev_Team` | P3 - Normal |

## ⚠️ Major Incident Protocol
If an issue impacts **business-critical operations** (e.g., the main database is down, or the call center cannot receive calls):
1. Immediately notify the **Major Incident Manager (MIM)**.
2. Open a bridge call (Teams/Zoom).
3. Do not attempt unapproved fixes; wait for Engineering direction.