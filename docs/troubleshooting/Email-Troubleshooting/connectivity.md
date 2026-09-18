# Email Client Connectivity

When a user complains that "Emails are not coming in" or "Outlook is frozen", start by checking the client's connection state.

## 1. The "Disconnected" State
**Symptom:** The bottom-right corner of Outlook says `Disconnected` or `Trying to connect...`.
- **Troubleshooting:**
  1. **Verify Network:** Can the user browse the internet? Is the VPN blocking traffic to Microsoft 365 IP ranges?
  2. **Work Offline Mode:** Check the `Send / Receive` tab in Outlook. Ensure the **Work Offline** button is NOT highlighted.
  3. **Check Connection Status:** `Ctrl` + Right-click the Outlook tray icon -> *Connection Status*. Look for high response times or failed connection attempts.

## 2. Corrupted OST File (Sync Issues)
**Symptom:** Outlook is connected, but the inbox hasn't updated since yesterday, or the user is missing specific folders. The local cache is likely corrupted.
- **Troubleshooting (Rebuilding the OST):**
  1. Close Outlook completely.
  2. Navigate to `%LOCALAPPDATA%\Microsoft\Outlook`.
  3. Locate the `<User_Email>.ost` file.
  4. Rename it to `<User_Email>.ost.old`.
  5. Relaunch Outlook. It will automatically recreate the OST file and download a fresh copy of the mailbox from the Exchange server. *(Note: This may take a while depending on mailbox size and network speed).*

## 3. Autodiscover Issues
**Symptom:** Setting up a new Outlook profile fails to find the server settings automatically.
- **Troubleshooting:**
  - Autodiscover relies on DNS. Open Command Prompt and test the CNAME record:
    ```cmd
    nslookup autodiscover.<User_Domain.com>
    ```
  - It should resolve to `autodiscover.outlook.com` (for Microsoft 365 environments).
  - Use the **Microsoft Support and Recovery Assistant (SaRA)** for deep client diagnostics.
  > 🔗 **External Resource:** [Microsoft SaRA Tool](https://support.microsoft.com/en-us/office/about-the-microsoft-support-and-recovery-assistant-e90bb691-c2a7-4697-a94f-88836856c72f)