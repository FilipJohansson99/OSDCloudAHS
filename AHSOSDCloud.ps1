Write-Host  -ForegroundColor Cyan "Starting Deployment..."
Start-Sleep -Seconds 1
$ErrorActionPreference = ‘SilentlyContinue’
Write-Host  -ForegroundColor Yellow "Removing remnants on USB..."
Get-ChildItem -Path D:\OSDCloud\OS -Recurse | Remove-Item -force -recurse -Confirm:$false -erroraction 'silentlycontinue'

Write-Host  -ForegroundColor Yellow "D:\OSDCloud\OS Removed..."
Get-ChildItem -Path D:\OSDCloud\DriverPacks -Recurse | Remove-Item -force -recurse -Confirm:$false -erroraction 'silentlycontinue'

Write-Host  -ForegroundColor Yellow "D:\OSDCloud\DriverPacks Removed..."

#Update OSD
Write-Host  -ForegroundColor Cyan "Updating OSD PowerShell Module"
Install-Module OSD -Force -erroraction 'silentlycontinue'

Write-Host  -ForegroundColor Cyan "Importing OSD PowerShell Module"
Import-Module OSD -Force -erroraction 'silentlycontinue'

#Start OSDCloudGUI
Write-Host  -ForegroundColor Cyan "Starting OSDCloud..."
Start-OSDCloudGUI -Brand 'AHS-Deployment'

#Post Actions
Write-Host  -ForegroundColor Cyan "Post Actions..."

Write-Host  -ForegroundColor Cyan "Cleaning up..."
Get-ChildItem -Path C:\OSDCloud -Recurse | Remove-Item -force -recurse -Confirm:$false -erroraction 'silentlycontinue'
Remove-Item C:\OSDCloud -Force -erroraction 'silentlycontinue'
#Copy-Item "X:\startup.cmd" -Destination "C:\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
#Copy-Item "X:\startup.ps1" -Destination "C:\OSDClod"
Write-Host  -ForegroundColor Yellow "C:\OSDCloud Removed..."



Write-Host  -ForegroundColor Cyan "Post Actions Completed..."

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Deployment Completed Restarting..."
Write-Host  -ForegroundColor Yellow "PLEASE REMOVE USB AND NETWORK CONNECTION BEFORE CONTINUING"
cmd /c pause
wpeutil reboot
