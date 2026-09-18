# Ipconfig & Netstat

These tools are used to diagnose the local machine's network configuration and active connections.

## 1. Ipconfig (IP Configuration)
Used in Windows to display all current TCP/IP network configuration values and refresh DHCP and DNS settings. *(The Linux equivalent is `ip a` or the deprecated `ifconfig`).*

**Essential Commands:**
- `ipconfig`: Displays basic IP address, Subnet Mask, and Default Gateway.
- `ipconfig /all`: Displays detailed information, including **MAC Address** (Physical Address), DHCP Server IP, and DNS Servers.
- `ipconfig /release` & `ipconfig /renew`: Drops the current DHCP lease and requests a new one. (Crucial for fixing APIPA `169.254.x.x` issues).
- `ipconfig /flushdns`: Clears the local DNS resolver cache. Always run this after a DNS record has been updated on the server.

## 2. Netstat (Network Statistics)
`netstat` displays active TCP connections, ports on which the computer is listening, Ethernet statistics, and the IP routing table.

**The Most Useful Command (`netstat -ano`):**
When troubleshooting an application that says "Port is already in use," you need to find out which background process is holding that port hostage.

```cmd
netstat -ano | findstr :443
```
- `-a`: Displays all active connections and listening ports.
- `-n`: Displays addresses and port numbers in numerical form (faster, stops it from trying to resolve hostnames).
- `-o`: Displays the owning **PID (Process ID)** associated with each connection.

**How to use the result:**
If `netstat` shows that PID `4512` is listening on Port 443, open Task Manager, go to the **Details** tab, sort by PID, and find `4512`. You can now kill the exact application causing the conflict.