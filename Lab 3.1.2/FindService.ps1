param ($servicename)
Get-Service -DisplayName *$servicename* | Format-Table DisplayName, Name, Status -AutoSize