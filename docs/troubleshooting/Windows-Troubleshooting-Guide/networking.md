# Windows Network Troubleshooting

*(For general network theory, refer to our [Network Troubleshooting Guide](../Network-Troubleshooting-Guide/README.md). This page focuses on Windows-specific commands.)*

## 1. The "Network Reset" Sequence
When a Windows machine (`[Hostname]`) has an active physical/Wi-Fi connection but no internet access (e.g., "Unidentified Network"), run the following sequence in an elevated Command Prompt:

```cmd
:: Flush DNS Cache
ipconfig /flushdns

:: Release and Renew IP Address
ipconfig /release
ipconfig /renew

:: Reset TCP/IP Stack
netsh int ip reset

:: Reset Winsock Catalog
netsh winsock reset
```
*Note: A system reboot is required after resetting Winsock.*

## 2. Advanced Connectivity Testing (PowerShell)
Instead of the legacy `ping` command, use PowerShell's `Test-NetConnection` for detailed diagnostics, including port checking.

**Check if a specific port is open (e.g., RDP on port 3389):**
```powershell
Test-NetConnection -ComputerName <Target_IP_or_Hostname> -Port 3389
```

## 3. Wi-Fi Profile Issues
**Symptom:** Windows refuses to connect to a previously saved Wi-Fi network because the password or security type changed.

**Fix:** Forget the network via GUI, or use CLI:
```cmd
netsh wlan show profiles
netsh wlan delete profile name="<SSID_Name>"
```