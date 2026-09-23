<#
.SYNOPSIS
    Retrieves basic system health metrics (CPU, RAM, Uptime).
.DESCRIPTION
    This script provides a quick overview of the system's current health, 
    useful for diagnosing slow performance reported by end-users.
.EXAMPLE
    .\Get-SystemHealth.ps1
#>

[CmdletBinding()]
param ()

Write-Host "Gathering System Health Metrics..." -ForegroundColor Cyan

try {
    # 1. Get System Uptime
    $os = Get-CimInstance Win32_OperatingSystem
    $uptime = (Get-Date) - $os.LastBootUpTime
    Write-Host "`n[+] System Uptime:" -ForegroundColor Green
    Write-Host "    Days: $($uptime.Days), Hours: $($uptime.Hours), Minutes: $($uptime.Minutes)"

    # 2. Get RAM Usage
    $totalRam = [math]::Round($os.TotalVisibleMemorySize / 1MB, 2)
    $freeRam = [math]::Round($os.FreePhysicalMemory / 1MB, 2)
    $usedRam = $totalRam - $freeRam
    $ramPercent = [math]::Round(($usedRam / $totalRam) * 100, 2)
    
    Write-Host "`n[+] Memory (RAM) Usage:" -ForegroundColor Green
    Write-Host "    Total: $totalRam GB"
    Write-Host "    Free:  $freeRam GB"
    Write-Host "    Usage: $ramPercent %"

    # 3. Get CPU Load
    $cpu = Get-CimInstance Win32_Processor | Measure-Object -Property LoadPercentage -Average
    Write-Host "`n[+] CPU Load:" -ForegroundColor Green
    Write-Host "    Average Usage: $($cpu.Average) %"

} catch {
    Write-Error "Failed to retrieve system health data. Error: $_"
}

Write-Host "`nDone." -ForegroundColor Cyan