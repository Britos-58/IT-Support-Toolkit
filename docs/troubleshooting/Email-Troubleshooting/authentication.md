# Email Authentication & MFA

Authentication issues are the #1 driver of email-related Helpdesk tickets, especially after password expirations or policy changes.

## 1. Constant Password Prompts
**Symptom:** Outlook repeatedly asks for a password, but entering the correct password does not stop the loop.
- **Troubleshooting:**
  1. **Clear Windows Credential Manager:** 
     - Close Outlook.
     - Open Start Menu -> search for `Credential Manager` -> `Windows Credentials`.
     - Delete any entries starting with `MicrosoftOffice16_Data:ADAL` or `MS.Outlook`.
     - Relaunch Outlook and authenticate.
  2. **Modern Authentication:** Ensure the tenant and the client support Modern Auth (OAuth 2.0). Legacy Basic Auth is deprecated by Microsoft and will cause constant prompt loops if attempted.

## 2. MFA (Multi-Factor Authentication) Failures
**Symptom:** User is not receiving the push notification on their Microsoft Authenticator app, or the SMS code never arrives.
- **Troubleshooting:**
  - Verify the user's mobile device has an active internet/cellular connection.
  - If the user got a new phone, the old Authenticator token is invalid. Escalate to the IAM/Security team to **Require Re-register MFA** for `<User_Email>` in the Azure AD / Entra ID portal.

## 3. App Passwords (Legacy Systems)
**Symptom:** A scanner, printer, or legacy application cannot send emails (SMTP Auth fails).
- **Troubleshooting:**
  - Devices that do not support MFA (like older printers) cannot use standard passwords if MFA is enforced.
  - Generate an **App Password** from the user's security settings and use that 16-character password in the printer's SMTP configuration.