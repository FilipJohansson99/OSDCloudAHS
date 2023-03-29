Write-Host  -ForegroundColor Cyan "Starting Deployment..."
Start-Sleep -Seconds 1



#Make sure I have the latest OSD Content
#Write-Host  -ForegroundColor Cyan "Updating OSD PowerShell Module"
#Install-Module OSD -Force

#Write-Host  -ForegroundColor Cyan "Importing OSD PowerShell Module"
#Import-Module OSD -Force


#Start OSDCloud ZTI the RIGHT way
Write-Host  -ForegroundColor Cyan "Starting OSDCloud..."
Start-OSDCloudGUI -Brand 'AHS-Deployment'

#PostAction
Write-Host  -ForegroundColor Cyan "Post Actions..."
Write-Host  -ForegroundColor Cyan "Updating Windows..."
UpdateWindows
Write-Host  -ForegroundColor Cyan "Updating Drivers..."
UpdateDrivers

#Write-Host  -ForegroundColor Cyan "Cleaning up..."
#Get-ChildItem -Path C:\OSDCloud -Recurse | Remove-Item -force -recurse
#Remove-Item C:\OSDCloud -Force 

Write-Host  -ForegroundColor Cyan "Post Actions Completed..."

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Deployment Completed press any key to restart..."
cmd /c pause
wpeutil reboot
