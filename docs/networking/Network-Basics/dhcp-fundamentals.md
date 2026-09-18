# DHCP (Dynamic Host Configuration Protocol)

**DHCP** is a network management protocol used to dynamically assign an IP address to any device, or node, on a network so they can communicate using IP.

## 1. The DORA Process
When a device connects to a network, it goes through a 4-step process to obtain an IP address, known as DORA:

1. **D - Discover:** The client broadcasts a message to the network saying, *"Is there a DHCP server here? I need an IP."*
2. **O - Offer:** The DHCP server hears the broadcast and replies with an offer: *"Here is an IP address you can use."*
3. **R - Request:** The client accepts the offer and broadcasts a formal request to use that specific IP.
4. **A - Acknowledge:** The DHCP server acknowledges the request and officially reserves the IP for that client.

## 2. DHCP Leases & Scopes
- **Scope:** The range of IP addresses a DHCP server is allowed to hand out (e.g., `192.168.1.100` to `192.168.1.200`).
- **Lease Time:** IPs are not given forever; they are leased. A typical corporate lease time is 8 days. When the lease reaches 50% of its time, the client quietly asks the server to renew it.
- **Reservations:** An administrator can configure the DHCP server to always assign the exact same IP address to a specific MAC (Media Access Control) address. Useful for printers and servers.

## 3. APIPA (Automatic Private IP Addressing)
If the DORA process fails (the DHCP server is down or unreachable), a Windows machine will assign itself an **APIPA** address.
- **Range:** `169.254.x.x`
- **Impact:** The machine will only be able to communicate with other APIPA machines on the local switch. It will not have internet access.