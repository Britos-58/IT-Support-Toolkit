# User Onboarding Checklist

**Purpose:** Ensure a seamless and secure Day 1 experience for new hires.
**Target Role:** IT Support / Identity & Access Management (IAM)

## 1. Identity & Account Creation
- [ ] Receive approved HR ticket with user details (Name, Title, Department, Start Date).
- [ ] Create user account in Active Directory (AD) / Entra ID.
- [ ] Apply standard naming convention for username and email.
- [ ] Add user to the correct Department Security Groups (RBAC).
- [ ] Add user to the correct Email Distribution Lists.

## 2. Licensing & Access
- [ ] Assign Microsoft 365 / Google Workspace license.
- [ ] Provision accounts for third-party SaaS apps (e.g., Salesforce, Jira, Slack) via SSO (Single Sign-On).
- [ ] Set up temporary initial password and enforce "User must change password at next logon".
- [ ] Enable Multi-Factor Authentication (MFA) requirement.

## 3. Hardware Provisioning
- [ ] Image the laptop with the standard corporate OS build (via Autopilot/SCCM).
- [ ] Verify endpoint management agent (e.g., Intune, Jamf) is installed and syncing.
- [ ] Verify Antivirus/EDR (e.g., CrowdStrike, Defender) is active.
- [ ] Pack peripherals (Monitor, Docking Station, Keyboard, Mouse, Headset).
- [ ] Record Asset Tags in the IT Inventory System.

## 4. Handover
- [ ] Send welcome email to the user's personal email/manager with Day 1 login instructions.
- [ ] Verify user successfully logged in and registered their MFA device.
- [ ] Close the Onboarding Ticket.