# Network Diagnostics CLI Tools

Welcome to the Network Diagnostics module. When a network issue is reported, IT professionals rely on Command Line Interface (CLI) tools to gather empirical data. Graphical User Interfaces (GUIs) often hide the exact error, whereas CLI tools provide raw, unfiltered network responses.

## 📂 Table of Contents
- [Ping & Tracert](ping-tracert.md) - Testing reachability, latency, and routing paths.
- [Nslookup & Dig](nslookup-dig.md) - Querying DNS records and isolating resolution failures.
- [Ipconfig & Netstat](ipconfig-netstat.md) - Verifying local configurations and active TCP/UDP connections.

## 🎯 Core Concepts
- **CLI (Command Line Interface):** A text-based user interface used to run programs and manage computer files.
- **ICMP (Internet Control Message Protocol):** A network layer protocol used by devices to diagnose network communication issues (used primarily by `ping` and `tracert`).
- **Isolation:** The primary goal of these tools is to isolate the failure domain. Is the issue on the local PC, the local switch, the ISP, or the destination server?