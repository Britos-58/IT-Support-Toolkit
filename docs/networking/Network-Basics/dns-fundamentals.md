# DNS (Domain Name System) Fundamentals

**DNS** is the "phonebook" of the Internet. Humans remember names (like `google.com`), but computers route traffic using IP addresses (like `142.250.190.46`). DNS translates the name into the IP.

## 1. FQDN (Fully Qualified Domain Name)
An FQDN specifies the exact location of a host within the domain hierarchy.
- *Example:* `server01.europe.company.com`
  - `server01` = Hostname
  - `europe.company.com` = Domain

## 2. Common DNS Record Types
When managing domains or troubleshooting email/web issues, you must know these record types:

- **A Record (Address):** Maps a domain name to an **IPv4** address.
- **AAAA Record:** Maps a domain name to an **IPv6** address.
- **CNAME (Canonical Name):** Maps an alias name to a true (canonical) domain name. (e.g., `www.company.com` points to `company.com`).
- **MX (Mail Exchanger):** Specifies the mail server responsible for accepting email messages on behalf of a domain.
- **TXT (Text):** Holds text information for sources outside your domain. Heavily used for email security (SPF, DKIM, DMARC) and domain ownership verification.

## 3. The DNS Resolution Process
1. **Local Cache:** The PC checks its own local DNS cache (`ipconfig /displaydns`).
2. **Local Hosts File:** The PC checks `C:\Windows\System32\drivers\etc\hosts`.
3. **Recursive Resolver:** The PC asks the corporate DNS server or ISP (e.g., `8.8.8.8`).
4. **Authoritative Nameserver:** If the resolver doesn't know, it queries the global root servers to find the exact IP.