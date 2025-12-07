# Script: List-Files.ps1
#Purpose: Demonstrates listing files and folders in a directory 
#Author: Carter Pratt

Write-Host "--- Listing files in Current Directory ---"
Get-Process | Select-Object Name, CPU, Id | Sort-Object CPU -Descending 
