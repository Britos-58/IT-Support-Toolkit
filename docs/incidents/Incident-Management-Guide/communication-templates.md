# Communication Templates

During an outage, you don't have time to think about how to format an email. Use these standardized templates for Statuspage updates, Slack/Teams announcements, or mass emails.

## 1. Investigating (Initial Alert)
**Use when:** The incident has just been declared. We know something is broken, but we don't know why yet.

> **Subject:** [Major Incident] `<Service_Name>` is currently unavailable
> 
> **Message:**
> We are currently investigating an issue affecting `<Service_Name>`. Users may experience `<Symptoms, e.g., inability to log in, slow loading times>`. 
> Our engineering team is engaged and actively investigating the root cause.
> We will provide the next update in `<Time, e.g., 30 minutes>`.

## 2. Identified (Root Cause Found)
**Use when:** We know what is broken and are working on the fix.

> **Subject:** [Update] `<Service_Name>` outage - Issue Identified
> 
> **Message:**
> Our team has identified the root cause of the issue affecting `<Service_Name>`. The problem is related to `<Brief, non-technical description, e.g., a database capacity issue>`.
> We are currently implementing a fix. 
> Next update in `<Time>`.

## 3. Monitoring (Fix Applied)
**Use when:** The fix was applied, but we are waiting to ensure it holds before declaring victory.

> **Subject:** [Update] `<Service_Name>` outage - Monitoring
> 
> **Message:**
> A fix has been implemented for `<Service_Name>`, and we are seeing services return to normal. We are closely monitoring the systems to ensure stability.

## 4. Resolved (All Clear)
**Use when:** The system is 100% functional.

> **Subject:** [Resolved] `<Service_Name>` is fully operational
> 
> **Message:**
> The issue affecting `<Service_Name>` has been fully resolved. All systems are operating normally. 
> A full Post-Incident Review (PIR) will be conducted internally to prevent this from happening in the future. We apologize for any inconvenience caused.