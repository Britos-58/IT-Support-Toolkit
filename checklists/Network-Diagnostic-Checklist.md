# Network Diagnostic Checklist

**Purpose:** Isolate connectivity issues using the OSI Model (Bottom-Up approach).

## 1. Layer 1 & 2 (Physical / Data Link)
- [ ] Verify the physical cable is plugged in and link lights are active.
- [ ] If Wi-Fi, verify the device is connected to the correct corporate SSID.
- [ ] Run `ipconfig /all`. Verify the MAC address and ensure media is not disconnected.

## 2. Layer 3 (Network / IP)
- [ ] Check for a valid IP address. (If `169.254.x.x`, troubleshoot DHCP).
- [ ] Ping the loopback address (`ping 127.0.0.1`) to test the NIC hardware.
- [ ] Ping the Default Gateway to test local network routing.

## 3. Layer 4 & 7 (Transport / Application)
- [ ] Ping `8.8.8.8` to verify external internet connectivity.
- [ ] Run `nslookup google.com` to verify DNS resolution is working.
- [ ] Test specific application ports using `Test-NetConnection -Port <Number>`.
- [ ] Verify local Windows Firewall or VPN client is not blocking the traffic.