#Write-Host  -ForegroundColor Cyan "Starting Deployment..."
#Start-Sleep -Seconds 1
Write-Host -ForegroundColor Red "THIS INSTALLATION MEDIA IS OUTDATED. PLEASE USE A NEWER USB OR CONTACT ADMINISTRATOR"

#Update OSD
#Write-Host  -ForegroundColor Cyan "Updating OSD PowerShell Module..."
#Install-Module OSD -Force -ErrorAction SilentlyContinue

#Write-Host  -ForegroundColor Cyan "Importing OSD PowerShell Module..."
#Import-Module OSD -Force -ErrorAction SilentlyContinue

#Start OSDCloudGUI
#rite-Host  -ForegroundColor Cyan "Starting AHSCloud..."
#tart-OSDCloudGUI -Brand 'AHS-Deployment'

#Post Actions
#Write-Host  -ForegroundColor Cyan "Post Actions..."

#Write-Host  -ForegroundColor Cyan "Cleaning up..."
#Get-ChildItem -Path C:\OSDCloud -Recurse | Remove-Item -Force -Recurse -Confirm:$false -ErrorAction SilentlyContinue
#Remove-Item C:\OSDCloud -Force -Recurse -ErrorAction SilentlyContinue
#Copy-Item "X:\startup.cmd" -Destination "C:\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
#Copy-Item "X:\startup.ps1" -Destination "C:\OSDClod"
#Get-ChildItem -Path C:\Program Files\WindowsPowerShell\Modules\OSD -Recurse | Remove-Item -Force -Recurse -Confirm:$false -ErrorAction SilentlyContinue
#Remove-Item C:\Program Files\WindowsPowerShell\Modules\OSD -Force -Recurse -ErrorAction SilentlyContinue

#Write-Host  -ForegroundColor Yellow "C:\OSDCloud Removed..."
#Write-Host  -ForegroundColor Yellow "Removing remnants on USB..."
#Get-ChildItem -Path D:\OSDCloud\OS -Recurse | Remove-Item -Force -Recurse -Confirm:$false -ErrorAction SilentlyContinue
#Remove-Item D:\OSDCloud\OS -Force -ErrorAction SilentlyContinue
#Write-Host  -ForegroundColor Yellow "D:\OSDCloud\OS Removed..."
#Get-ChildItem -Path D:\OSDCloud\DriverPacks -Recurse | Remove-Item -Force -Recurse -Confirm:$false -ErrorAction SilentlyContinue
#Remove-Item D:\OSDCloud\DriverPack -Force -ErrorAction SilentlyContinue
#Write-Host  -ForegroundColor Yellow "D:\OSDCloud\DriverPacks Removed..."


#Write-Host  -ForegroundColor Cyan "Post Actions Completed..."

#Clear-Host

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Deployment Completed Restarting to AuditMode..."

#Write-Host  -ForegroundColor Yellow "INSTALLATION WILL CONTINUE IN OOBE, DO NOT REMOVE USB"
#Write-Host  -ForegroundColor Yellow "While in OOBE reconnect internet and open cmd with SHIFT + F10. Enter the following:"
#Write-Host  -ForegroundColor Yellow "D:"
#Write-Host  -ForegroundColor Yellow "oobe.cmd"
#Set-OSDCloudUnattendAuditMode
cmd /c pause
wpeutil reboot
