<#
.SYNOPSIS
   Automates bulk folder and file creation for IT tasks

.DESCRIPTION
   This PowerShell script creates a parent directory and generates
   multiple subfolders and text files for mock provisioning or project setup.

.AUTHOR
   Carter Pratt
#>

# Set target folder 
$ParentPath = "C:\AutomationLab"

# Create parent folder if it doesn't exist 
if (!(Test-Path $ParentPath)) {
     New-Item - ItemType Directory -Path $ParentPath
     Write-Host "Created $ParentPath"
}

#Create subfolder and log files
$Folders + @("Helpdesk", "HR", "Finance", "Inventory")

Foreach ($Folder in $Folder) {
   $FullPath = Join-Path $ParentPath $Folder
   
   if (!(Test-Path $FullPath)) {
       New-Item -ItemType Directory -Path $FullPath
       New-Item - Path "FullPath\Readme.txt" -ItemType File 
       Write-Host "Created $Folder and ReadMe.txt"} }
