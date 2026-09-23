<#
.SYNOPSIS
    Generates a list of installed software on the machine.
.DESCRIPTION
    Queries the Windows Registry to find installed applications. 
    Useful for auditing a machine before a wipe or checking for unauthorized software.
#>

[CmdletBinding()]
param ()

Write-Host "Querying Registry for Installed Software..." -ForegroundColor Cyan

# Paths for 64-bit and 32-bit software
$paths = @(
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

$installedApps = Get-ItemProperty $paths | 
    Where-Object { $_.DisplayName -and $_.DisplayName -notmatch "^KB\d" } | 
    Select-Object DisplayName, DisplayVersion, Publisher | 
    Sort-Object DisplayName -Unique

# Output the results in a clean table format
$installedApps | Format-Table -AutoSize

Write-Host "Found $($installedApps.Count) applications installed." -ForegroundColor Green