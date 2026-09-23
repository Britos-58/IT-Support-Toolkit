<#
.SYNOPSIS
    Checks local disk space and highlights drives with low capacity.
.DESCRIPTION
    Scans all logical disks. If a disk has less than 15% free space, 
    it is flagged as a warning.
#>

[CmdletBinding()]
param (
    [int]$WarningThresholdPercent = 15
)

Write-Host "Checking Local Disk Storage..." -ForegroundColor Cyan

$disks = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" # 3 = Local Disk

foreach ($disk in $disks) {
    $driveLetter = $disk.DeviceID
    $totalSpace = [math]::Round($disk.Size / 1GB, 2)
    $freeSpace = [math]::Round($disk.FreeSpace / 1GB, 2)
    
    if ($totalSpace -gt 0) {
        $freePercent = [math]::Round(($freeSpace / $totalSpace) * 100, 2)
        
        $output = "Drive $driveLetter | Total: ${totalSpace}GB | Free: ${freeSpace}GB ($freePercent%)"

        if ($freePercent -le $WarningThresholdPercent) {
            Write-Host "[WARNING] $output" -ForegroundColor Red
        } else {
            Write-Host "[OK]      $output" -ForegroundColor Green
        }
    }
}