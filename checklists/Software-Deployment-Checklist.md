# Software Deployment Checklist

**Purpose:** Ensure successful mass deployment of software via MDM/SCCM and prevent widespread failures.

## 1. Pre-Flight Checks
- [ ] Verify the installer type (MSI, EXE, MSIX).
- [ ] Identify the correct silent install switches (e.g., `/qn /norestart`).
- [ ] Test the silent install command manually via an elevated Command Prompt.
- [ ] Verify license keys or `.mst` (Transform) files are included in the package.

## 2. Deployment Configuration
- [ ] Set the installation context (System vs. User).
- [ ] Define detection rules (e.g., check if `C:\Program Files\App\app.exe` exists) so the MDM knows it succeeded.
- [ ] Define uninstallation commands.

## 3. Rollout & Testing
- [ ] Deploy to a small Pilot/Test Group first (IT department or power users).
- [ ] Verify successful installation and application launch on test machines.
- [ ] Monitor deployment logs for error codes (e.g., `1603`).
- [ ] Approve rollout to the broader production group.