# Nslookup & Dig (DNS Diagnostics)

When a user can reach a server by its IP address but not by its name, you have a DNS issue. 

## 1. Nslookup (Name Server Lookup)
`nslookup` is a network administration command-line tool available in Windows and Linux for querying the **DNS (Domain Name System)** to obtain domain name or IP address mapping.

**Basic Query (Non-Interactive):**
```cmd
nslookup www.microsoft.com
```

**Querying a Specific DNS Server:**
To test if your corporate DNS is failing but public DNS is working, append the server IP at the end:
```cmd
nslookup www.microsoft.com 8.8.8.8
```

**Interactive Mode:**
Useful for querying specific record types (like MX for email, or TXT for SPF records).
```cmd
nslookup
> set type=mx
> company.com
```
*(This will return the mail servers responsible for `company.com`).*

## 2. Dig (Domain Information Groper)
`dig` is the Linux/macOS equivalent of `nslookup`, but it is much more powerful and provides more detailed, raw output. (It can be installed on Windows via BIND tools, but is native to Unix).

**Basic Usage:**
```bash
dig google.com
```

**Querying Specific Records:**
```bash
dig TXT google.com
```

**Short Output (Just the IP):**
```bash
dig +short google.com
```