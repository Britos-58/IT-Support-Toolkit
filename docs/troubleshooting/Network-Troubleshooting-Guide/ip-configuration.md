# IP Configuration & DHCP Issues

Proper IP configuration is required for any network communication.

## 1. The APIPA Address (169.254.x.x)
**Symptom:** The machine has an IP address starting with `169.254...` and no internet access.

**Root Cause:** APIPA (Automatic Private IP Addressing) kicks in when a machine is configured for DHCP but **cannot reach the DHCP server**.

**Resolution Steps:**
1. Check physical connectivity (Layer 1).
2. Attempt to force a new DHCP lease:
   ```cmd
   ipconfig /release
   ipconfig /renew
   ```
3. If it fails, check if the DHCP server scope is full or if the switch port is configured for the wrong VLAN.

## 2. IP Conflicts
**Symptom:** Windows displays a warning: "Windows has detected an IP address conflict."

**Root Cause:** Two devices on the same network have the exact same IP address (usually caused by a static IP being assigned within the DHCP pool).

**Resolution Steps:**
1. Find the MAC address of the conflicting device by pinging the IP and checking the ARP table:
   ```cmd
   ping <Conflicting_IP>
   arp -a | findstr <Conflicting_IP>
   ```
2. Track down the MAC address on the switch or change the static IP of the affected machine.

## 3. Subnet Mask Mismatch
If a machine has a valid IP but cannot reach certain local servers, verify the Subnet Mask. A mask of `255.255.255.0` (`/24`) cannot communicate directly with a machine on a different subnet without a router.