# Network Troubleshooting Guide

Welcome to the Network Troubleshooting Guide. This section provides a systematic approach to diagnosing and resolving network connectivity, DNS, and performance issues in a corporate environment.

## 📂 Table of Contents
- [General Connectivity](connectivity.md) - Physical layer, gateways, and firewall drops.
- [DNS Diagnostics](dns.md) - Name resolution, `nslookup`, and cache issues.
- [IP Configuration](ip-configuration.md) - DHCP, APIPA, and subnetting issues.
- [Latency & Packet Loss](latency.md) - Ping spikes, `tracert`, and routing problems.

## 🛠️ Essential Command-Line Tools
Familiarize yourself with these built-in OS tools before relying on third-party software:
- **`ping`**: Tests reachability and measures round-trip time.
- **`tracert` / `traceroute`**: Displays the path packets take to a destination.
- **`nslookup` / `dig`**: Queries DNS to resolve domain names to IP addresses.
- **`netstat`**: Displays active TCP connections, ports, and routing tables.
- **`pathping` / `mtr`**: Combines ping and tracert for detailed packet loss analysis.

> 🔗 **External Resource:** [Cisco - Basic IP Routing Troubleshooting](https://www.cisco.com/c/en/us/support/docs/ip/routing-information-protocol-rip/13730-106.html)