# Script: Get-NetworkInfo.ps1
# Purpose: Display basic network information for troubleshooting
# Author: Carter Pratt

Write-Host "=== Network Information ==="

# Display hostname
write-Host "Hostname:"
hostname
Write-Host

# Display IP configuration summary
Write-Host "IP Configuration:"
Get-NetIPAddress | Select-Object InterfaceAlias, IPAddress, AddressFamily
Write-Host""

# Display active network adapters
Write-Host "Network Adapters:"
Get-NetAdapter | Select-Object Name, Status, LinkSpeed
