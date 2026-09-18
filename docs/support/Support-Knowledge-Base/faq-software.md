# Software FAQs & Quick Fixes

This document contains rapid troubleshooting steps for common software, account, and connectivity complaints.

## 1. Web Browsers & Caching
**Q: "A specific internal website is loading weirdly or giving a 400 Bad Request error."**
- **Quick Fix:**
  1. Test the site in **Incognito/InPrivate mode** (`Ctrl + Shift + N`). If it works perfectly, the issue is a corrupted cookie or cached file.
  2. Clear the browser cache: Press `Ctrl + Shift + Delete`. Select "Cookies and other site data" and "Cached images and files" for all time.
  3. Refresh the page using a hard reload: `Ctrl + F5`.

## 2. Account Lockouts & Passwords
**Q: "I am locked out of my account / My password isn't working."**
- **Quick Fix:**
  1. Verify the user is typing their username correctly (e.g., `jdoe` vs `jdoe@company.com`).
  2. Check if the Caps Lock or Num Lock keys are on.
  3. In Active Directory (AD), check if the account is locked. If yes, unlock it, but DO NOT reset the password immediately. Ask the user to try their known password again.
  4. If they forgot it, verify their identity (via manager approval or security questions) before issuing a temporary password. Force "User must change password at next logon".

## 3. VPN (Virtual Private Network)
**Q: "I can't connect to the corporate VPN from home."**
- **Quick Fix:**
  1. Verify the user actually has an active internet connection (can they reach `google.com`?).
  2. Check if the user is on a public Wi-Fi network (like a hotel or airport) that requires a Captive Portal login first.
  3. Ensure the VPN client is fully updated.
  4. If the VPN connects but internal resources are unreachable, run `ipconfig /flushdns` to clear stale routing data.

## 4. Microsoft Office 365
**Q: "Excel/Word is asking me to 'Sign In' to activate, but it fails."**
- **Quick Fix:**
  1. Close all Office applications.
  2. Open Windows Settings -> **Accounts** -> **Access work or school**.
  3. Disconnect the corporate account, then click **Connect** to re-authenticate the device with Azure AD / Entra ID.
  4. Re-open Excel and sign in.