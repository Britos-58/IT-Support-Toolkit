# IP Addressing & Subnetting

An **IP (Internet Protocol)** address is a unique identifier assigned to every device connected to a network, allowing them to locate and communicate with each other.

## 1. IPv4 vs. IPv6
- **IPv4 (Internet Protocol version 4):** The most common standard. It uses a 32-bit address scheme expressed in four octets (e.g., `192.168.1.50`). 
- **IPv6 (Internet Protocol version 6):** Created to solve the IPv4 exhaustion problem. It uses a 128-bit address scheme expressed in hexadecimal (e.g., `2001:0db8:85a3:0000:0000:8a2e:0370:7334`).

## 2. Public vs. Private IP Addresses
- **Public IPs:** Routable on the open Internet. Assigned by your ISP (Internet Service Provider).
- **Private IPs:** Non-routable on the Internet. Used exclusively inside local networks (LANs). A router uses **NAT (Network Address Translation)** to translate private IPs into a single public IP.
  - *Private Ranges:* `10.x.x.x`, `172.16.x.x` to `172.31.x.x`, and `192.168.x.x`.

## 3. Subnet Mask
A **Subnet Mask** determines which part of the IP address is the "Network ID" and which part is the "Host ID".
- *Example:* If the IP is `192.168.1.50` and the Subnet Mask is `255.255.255.0`, the network is `192.168.1.X`, and the specific device (host) is `.50`.
- **CIDR Notation:** Instead of writing `255.255.255.0`, engineers often write `/24` (meaning 24 bits are used for the network portion).

## 4. Default Gateway
The **Default Gateway** is the IP address of the router. When a computer wants to send data to an IP address that is *not* on its local subnet, it sends the data to the Default Gateway to be routed out to the Internet or another WAN.