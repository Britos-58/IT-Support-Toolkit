# DNS (Domain Name System) Diagnostics

DNS translates human-readable domain names (e.g., `google.com`) into IP addresses. It is the most common cause of "cannot browse the web" issues when the network is otherwise connected.

## 1. Identifying a DNS Issue
**Symptom:** You can ping an external IP (e.g., `8.8.8.8`) but you cannot ping a domain name (e.g., `google.com`).

**Error Messages:**
- `DNS_PROBE_FINISHED_NXDOMAIN` (Browser)
- `Ping request could not find host...` (CLI)

## 2. Using NSLookup
Use `nslookup` to query the DNS server directly and see how it resolves a domain.

```cmd
nslookup www.microsoft.com
```
**Advanced: Query a specific public DNS server (e.g., Google DNS)**
```cmd
nslookup www.microsoft.com 8.8.8.8
```
*If the default server fails but 8.8.8.8 succeeds, your local ISP or corporate DNS server is experiencing an outage.*

## 3. Standard Remediation
1. **Flush the local DNS cache:**
   ```cmd
   ipconfig /flushdns
   ```
2. **Check the local `hosts` file:**
   Sometimes malware or manual configurations override DNS. Check `C:\Windows\System32\drivers\etc\hosts` to ensure there are no rogue entries redirecting valid domains.
3. **Verify Adapter Settings:** Ensure the NIC is set to "Obtain DNS server address automatically" (or the correct corporate static IP).