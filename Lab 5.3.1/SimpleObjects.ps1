$os = Get-WmiObject -class win32_operatingsystem
$computer = Get-WmiObject -Class win32_computersystem

write-host "Buildnumber:" $os.BuildNumber
Write-Host "DNS Hostname:" $computer.DNSHostName