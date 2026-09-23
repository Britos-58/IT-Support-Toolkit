<#
.SYNOPSIS
    Automates basic network troubleshooting steps.
.DESCRIPTION
    Pings the loopback address, default gateway, and an external DNS server 
    to isolate where a network connection is failing.
#>

[CmdletBinding()]
param ()

Write-Host "Starting Network Diagnostics..." -ForegroundColor Cyan

# 1. Test Loopback (NIC Hardware Check)
Write-Host "`nTesting Loopback (127.0.0.1)..."
if (Test-Connection -ComputerName 127.0.0.1 -Count 1 -Quiet) {
    Write-Host "  [+] Loopback OK (NIC is functioning)" -ForegroundColor Green
} else {
    Write-Host "  [-] Loopback FAILED (Hardware/Driver issue)" -ForegroundColor Red
}

# 2. Get Default Gateway
$gateway = (Get-NetRoute -DestinationPrefix "0.0.0.0/0" -ErrorAction SilentlyContinue | Select-Object -ExpandProperty NextHop)
if ($gateway) {
    Write-Host "`nTesting Default Gateway ($gateway)..."
    if (Test-Connection -ComputerName $gateway -Count 2 -Quiet) {
        Write-Host "  [+] Gateway Reachable (Local network OK)" -ForegroundColor Green
    } else {
        Write-Host "  [-] Gateway UNREACHABLE (Local network issue)" -ForegroundColor Red
    }
} else {
    Write-Host "`n[-] No Default Gateway found. Check DHCP/Cable." -ForegroundColor Red
}

# 3. Test Internet Connectivity (Google DNS)
Write-Host "`nTesting Internet Access (8.8.8.8)..."
if (Test-Connection -ComputerName 8.8.8.8 -Count 2 -Quiet) {
    Write-Host "  [+] Internet Reachable" -ForegroundColor Green
} else {
    Write-Host "  [-] Internet UNREACHABLE (ISP or Firewall issue)" -ForegroundColor Red
}