Write-Host  -ForegroundColor Cyan "Starting Deployment..."
Start-Sleep -Seconds 1

#Update OSD
Write-Host  -ForegroundColor Cyan "Updating OSD PowerShell Module"
Install-Module OSD -Force

Write-Host  -ForegroundColor Cyan "Importing OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloudGUI
Write-Host  -ForegroundColor Cyan "Starting OSDCloud..."
Start-OSDCloudGUI -Brand 'AHS-Deployment'

#Post Actions
Write-Host  -ForegroundColor Cyan "Post Actions..."

Write-Host  -ForegroundColor Cyan "Cleaning up..."
Get-ChildItem -Path C:\OSDCloud -Recurse | Remove-Item -force -recurse
Remove-Item C:\OSDCloud -Force 
Write-Host  -ForegroundColor Yellow "C:\OSDCloud Removed..."

Write-Host  -ForegroundColor Cyan "Post Actions Completed..."

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Deployment Completed Restarting..."
cmd /c pause
wpeutil reboot
