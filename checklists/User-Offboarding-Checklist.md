# User Offboarding Checklist

**Purpose:** Secure company data and reclaim assets when an employee leaves. 
**CRITICAL:** This process must be executed immediately upon termination to prevent unauthorized access.

## 1. Immediate Access Revocation (IAM)
- [ ] Force sign-out of all active Microsoft 365 / Google Workspace sessions.
- [ ] Reset the user's Active Directory password to a complex, random string.
- [ ] Disable the Active Directory / Entra ID account (DO NOT delete immediately).
- [ ] Remove the user from all Security Groups and VPN access lists.
- [ ] Revoke access to third-party SaaS applications.

## 2. Data Retention & Routing
- [ ] Convert the user's mailbox to a Shared Mailbox (to retain data without consuming a paid license).
- [ ] Set up an auto-responder (Out of Office) directing emails to the manager or department.
- [ ] Hide the user from the Global Address List (GAL).
- [ ] Transfer ownership of critical OneDrive/Google Drive files to the user's manager.

## 3. Asset Reclamation
- [ ] Contact the user or manager to schedule hardware return.
- [ ] Receive Laptop, Charger, and Peripherals.
- [ ] Update the IT Inventory System (Mark assets as "In Stock" or "Retired").
- [ ] Wipe the laptop drive securely before re-imaging for the next user.

## 4. Finalization
- [ ] Document all steps taken in the Offboarding Ticket.
- [ ] Close the ticket.