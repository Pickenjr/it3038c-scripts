$getHost = $HOST.version.Major
$getUser = $env:USERNAME
$getHostname = $env:COMPUTERNAME
$getDate = get-date -UFormat "%B %d, %Y"
$getIP = (Get-NetIPAddress).ipv4address | Select-String "192*"
$BODY = ("This machine's IP address is $getIP. User is $getUser. Hostname is $getHostname. Powershell version $getHost. Today's date is $getDate.")
$getBody = Write-Host $BODY
Send-MailMessage -To "pickenjr@mail.uc.edu" -From "jpick6@gmail.com" -Subject "IT3038C Windows Sysinfo" -Body $BODY -SmtpServer smtp.gmail.com -Port 587 -UseSsl -Credential (Get-Credential)