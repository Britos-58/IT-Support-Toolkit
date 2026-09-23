# EX-001: Resolved Printer Ticket

**Ticket ID:** INC-8492
**Status:** Resolved
**Priority:** P3 - Normal

## User Submission
- **Name:** Sarah Jenkins (Finance Dept)
- **Issue:** "I can't print the Q3 reports. The printer on the 3rd floor just says 'Offline' on my computer. I need this for a meeting at 2 PM."

---

## IT Internal Notes (Visible to IT Only)
**[10:15 AM - IT Support (Gabriel Lopes)]**
- Pinged printer IP `10.0.3.50` -> Reply received. Network is up.
- Accessed Printer Web Interface (EWS). Toner is 80%, no paper jams.
- Checked user's PC via remote session. The print queue had 5 stuck jobs.
- Executed spooler reset sequence via elevated CMD (`net stop spooler`, cleared `%systemroot%\System32\Spool\Printers\*.*`, `net start spooler`).
- Disabled "SNMP Status Enabled" in the port configuration to prevent future false "Offline" states.
- Printed test page successfully.

---

## Public Communication (Visible to User)
**[10:20 AM - IT Support (Gabriel Lopes)]**
Hi Sarah,

Thank you for reaching out. I understand how urgent this is for your 2 PM meeting. 

I connected to your computer and cleared a corrupted document that was stuck in the background, which was causing the printer to appear offline. I also adjusted a network setting to prevent this from happening again.

I sent a test page to the 3rd-floor printer and it printed successfully. You are all set to print your Q3 reports! 

If you run into any more trouble, please let me know.