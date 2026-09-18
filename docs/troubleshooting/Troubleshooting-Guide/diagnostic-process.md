# The Diagnostic Process

This document expands on the 6-step CompTIA process, providing actionable steps and templates for gathering information.

## 📋 1. Information Gathering (User Interview)

When a ticket (`<Ticket_ID>`) is opened, gather the following baseline information:

- **User / Affected Entity:** `[User_Name] / [Department]`
- **System / Asset Tag:** `[Hostname] / [Asset_ID]`
- **OS / Software Version:** `[OS_Version] / [App_Version]`
- **Exact Error Message:** (Do not paraphrase, get the exact string or screenshot)
- **Scope:** Is it affecting one user, a department, or the whole company?
- **Timeline:** When did it start? What changed recently? (Updates, new hardware?)

## 🔍 2. System Diagnostics (Where to look)

Don't guess; look at the logs.

- **Windows:** Check Event Viewer (`eventvwr.msc`) -> System / Application logs.
  > 🔗 [Microsoft Docs: Event Viewer](https://learn.microsoft.com/en-us/shows/inside/event-viewer)
- **Network:** Run `ping`, `tracert`, `nslookup`.
- **Web Apps:** Check browser Developer Tools (F12) -> Network / Console tabs.

## 🛠️ 3. Action Plan & Testing

1. Formulate a hypothesis (e.g., *The DNS cache is corrupted*).
2. Execute the fix (e.g., run `ipconfig /flushdns`).
3. Test functionality.

## 📝 4. Documentation Template

Every resolved ticket MUST include a resolution summary. Use this format:

```text
**Issue Summary:** [Brief description of the problem]
**Root Cause:** [What actually caused the issue]
**Resolution:** [Step-by-step of what was done to fix it]
**Preventive Action:** [What can be done to stop this from happening again]