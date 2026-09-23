<#
.SYNOPSIS
    Resets basic network configurations to resolve connectivity issues.
.DESCRIPTION
    Flushes the DNS cache, releases/renews the DHCP lease, and resets Winsock.
    Must be run as Administrator.
#>

# Ensure script is running as Administrator
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "This script must be run as Administrator!"
    break
}

Write-Host "Executing Network Reset Sequence..." -ForegroundColor Cyan

try {
    Write-Host "1. Flushing DNS Cache..."
    ipconfig /flushdns | Out-Null
    
    Write-Host "2. Releasing IP Address..."
    ipconfig /release | Out-Null
    
    Write-Host "3. Renewing IP Address (This may take a moment)..."
    ipconfig /renew | Out-Null
    
    Write-Host "4. Resetting Winsock Catalog..."
    netsh winsock reset | Out-Null

    Write-Host "`n[+] Network reset complete. A system reboot is highly recommended." -ForegroundColor Green
} catch {
    Write-Error "An error occurred during the network reset."
}