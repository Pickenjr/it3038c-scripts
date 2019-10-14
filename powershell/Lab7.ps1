#This will display active and recent detected threats on your computer. It will be blank if nothing has been detected.
get-mpthreatdetection
#This will show you preferences you have set on your Windows Defender, such as Removable Drive Scanning. These settings can be changed using the Set-MpPreference -DisableRemovableDriveScanning $false or $true
Get-MpPreference | fl disable*
#This shows you your computers anti-virus software information.
Get-MpComputerStatus