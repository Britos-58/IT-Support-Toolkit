# Mail Delivery & Flow

When an email leaves the outbox but doesn't reach the recipient, or external emails are not arriving, you must troubleshoot the mail flow.

## 1. Analyzing NDRs (Non-Delivery Reports)
An NDR (or "Bounceback") contains specific error codes that tell you exactly why an email failed.

**Common SMTP Error Codes:**
- `5.1.1 User Unknown:` The recipient email address does not exist. (Check for typos).
- `5.2.2 Mailbox Full:` The recipient's mailbox has reached its storage quota.
- `5.4.1 Relay Access Denied:` The recipient server rejected the connection (often a DNS/MX record issue on their end).
- `5.7.1 Access Denied / Sender Rejected:` The sender is blocked, or the email was flagged as spam/malware by the recipient's firewall.

## 2. Using Message Trace (Admin/Tier 2)
If an email is "lost" and there is no NDR, rely on the Exchange Admin Center.
1. Go to **Exchange Admin Center** -> **Mail Flow** -> **Message Trace**.
2. Enter the **Sender**, **Recipient**, and **Time Range**.
3. The trace will show the exact status:
   - **Delivered:** It reached the inbox. (If the user can't see it, check their local Outlook Rules or Junk folder).
   - **Quarantined:** Blocked by Microsoft Defender / Spam filters.
   - **Expanded:** Sent to a Distribution List.

## 3. Spam & Spoofing (SPF, DKIM, DMARC)
**Symptom:** Emails sent by your company `<Your_Domain.com>` are landing in customers' Spam folders.
- **Troubleshooting:**
  - This is almost always an issue with email authentication DNS records.
  - **SPF (Sender Policy Framework):** Lists the IP addresses authorized to send emails on your behalf.
  - **DKIM (DomainKeys Identified Mail):** Adds a digital signature to emails.
  - **DMARC:** Tells the receiving server what to do if SPF/DKIM fail.
  - Use MXToolbox to validate that your domain's SPF record includes the service you are using to send emails (e.g., `include:spf.protection.outlook.com`).