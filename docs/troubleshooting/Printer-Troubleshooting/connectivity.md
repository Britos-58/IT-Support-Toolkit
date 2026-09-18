# Printer Connectivity & "Offline" Status

The most common printer ticket is: *"My printer says it's offline."*

## 1. Network (IP) Printers
If a network printer is showing as "Offline" in Windows, follow these steps:

1. **Ping the Printer:** Find the printer's IP address (usually printed on a configuration page or found in the printer's physical menu).
   ```cmd
   ping <Printer_IP>
   ```
   - *If it fails:* Check the physical ethernet cable on the printer, or verify if the printer has a static IP outside the DHCP scope.
   - *If it replies:* The network is fine; the issue is with Windows communication (usually SNMP).

2. **Disable SNMP Status Enabled:**
   Windows uses SNMP to check if the printer is online. If the printer goes to sleep, Windows might think it's dead.
   - Open **Control Panel** -> **Devices and Printers**.
   - Right-click the printer -> **Printer Properties**.
   - Go to the **Ports** tab -> select the checked IP port -> click **Configure Port**.
   - Uncheck **SNMP Status Enabled** and click OK. The printer will often instantly come back "Online".

## 2. Local (USB) Printers
If a USB printer is not responding:
1. **Physical Check:** Reseat the USB cable on both the PC and the printer. Try a different USB port directly on the motherboard (avoid USB hubs/docks).
2. **Device Manager:** Open `devmgmt.msc` and look for unknown devices or devices with a yellow exclamation mark under "Universal Serial Bus controllers" or "Printers".
3. **Power Cycle (Hard Reset):** Turn the printer off, unplug the power cord for 30 seconds, plug it back in, and turn it on.

## 3. Print Server vs. Direct IP
Determine how the user is connecting to the printer:
- **Print Server (`\\servername\printername`):** If multiple users cannot print, the issue is on the Print Server. Check if the server is up and the spooler is running.
- **Direct IP:** If the printer is mapped directly via TCP/IP port, the issue is isolated to that specific user's PC.