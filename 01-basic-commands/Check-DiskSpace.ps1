# Script: Check-DiskSpace.ps1
# Purpose: Display basic disk space information
# Author: Carter Pratt

Write-Host "=== Disk Space Information ==="
Get-PSDrive -PSProvider FileSystem | Select-Object Name, Free, Used @{Name="Total"; Expression={$_.Free +_.Used}}
