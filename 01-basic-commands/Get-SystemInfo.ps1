# Script: Get-SystemInfo.ps1
# Purpose: Display basic system information for IT support and troubleshooting
# Author: Carter Pratt

Write-Host "===== System Information ====="
Get-ComputerInfo | Select-Object WindowsProductName. WindowsVersion, Csname, Csmanufacturer, Csmodel
Write-Host "=============================="
