# General Connectivity Diagnostics

When a user reports "The internet is down" or "I can't reach the server", follow the bottom-up OSI model approach to isolate the issue.

## 1. Layer 1: Physical Link
Before running commands, verify the physical connection.
- **Wired:** Is the Ethernet cable plugged in? Are the link lights blinking on the NIC and the switch port?
- **Wireless:** Is the Wi-Fi adapter enabled? Is the user connected to the correct SSID?

## 2. Layer 2/3: Local Network & Gateway
Can the machine talk to its local network?

1. Find the Default Gateway:
   ```cmd
   ipconfig | findstr /i "Gateway"
   ```
2. Ping the Gateway (`<Gateway_IP>`):
   ```cmd
   ping <Gateway_IP>
   ```
   - **Reply:** Local network is fine. The issue is beyond the router (WAN/Firewall).
   - **Request Timed Out:** The issue is local (Bad switch, wrong VLAN, IP conflict).

## 3. Layer 4: Port & Firewall Issues
If you can ping a server but cannot access its web page (HTTP/HTTPS), the issue is likely a blocked port or service failure.

**Test Port Connectivity (PowerShell):**
```powershell
Test-NetConnection -ComputerName <Server_IP> -Port 443
```
- If `TcpTestSucceeded : True`, the network path is open. The issue is on the application level.
- If `False`, check local Windows Firewall or corporate perimeter firewalls.