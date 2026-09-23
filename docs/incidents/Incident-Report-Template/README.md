# Post-Incident Report (PIR) Methodology

Welcome to the Post-Incident Report (PIR) documentation. Writing a PIR (also known as a Post-Mortem) is the final and most crucial step of the Incident Management lifecycle. 

This document explains the theory, methodology, and best practices for conducting a PIR after a Major Incident (P1/P2) has been resolved.

## 🎯 The "Blameless" Philosophy
The primary goal of a PIR is **Continuous Improvement**, not punishment. 
If an engineer brought down the core database by typing the wrong command, the PIR does not focus on the engineer's mistake. Instead, it asks: *"Why did our systems allow a single typo to bring down the database without a safety check?"*

By fostering a **Blameless Culture**, engineers are encouraged to report issues honestly and quickly, rather than hiding them out of fear.

## 🧩 Anatomy of a Good PIR
A standard enterprise PIR contains four critical sections:

### 1. Executive Summary
A high-level overview intended for management and non-technical stakeholders. It must answer:
- What was the business impact? (e.g., "Customers could not process payments for 45 minutes").
- How was it resolved?

### 2. Timeline of Events
A chronological log of exactly what happened, based on the notes taken by the Scribe during the War Room bridge call.
- **Rule:** Use exact timestamps (UTC or local time, consistently). Include when the issue started, when IT was notified, when the root cause was found, and when it was resolved.

### 3. Root Cause Analysis (RCA) - The "5 Whys"
Do not confuse the *symptom* with the *root cause*. To find the true root cause, we use the **5 Whys Technique** (originally developed by Toyota). You ask "Why?" until you hit a process or systemic failure.

*Example:*
1. **Why did the website crash?** Because the web server ran out of memory. *(Symptom)*
2. **Why did it run out of memory?** Because a new code update caused a memory leak.
3. **Why was the update deployed with a leak?** Because it bypassed the staging environment.
4. **Why did it bypass staging?** Because the automated deployment pipeline failed, and the developer pushed it manually.
5. **Why did the pipeline fail?** Because the SSL certificate for the CI/CD tool expired. *(Root Cause)*

### 4. Action Items (Preventative Measures)
A PIR is useless if it doesn't result in change. Action items must be **SMART** (Specific, Measurable, Assignable, Realistic, Time-bound).
- *Bad Action Item:* "Improve monitoring."
- *Good Action Item:* "Create a Datadog alert to page the on-call engineer if CI/CD SSL certificates are within 14 days of expiration. Assigned to: John Doe. Due: Friday."

---

## 🔗 Official Templates & Examples
Now that you understand the methodology, use the standardized files located in the root directories of this repository to document your incidents:

- 📝 **Blank PIR Template:** [`../../../templates/Post-Incident-Report-Template.md`](../../../templates/Post-Incident-Report-Template.md)
- 📊 **Filled-out PIR Example:** [`../../../examples/incidents/EX-001-Database-Outage-PIR.md`](../../../examples/incidents/EX-001-Database-Outage-PIR.md)