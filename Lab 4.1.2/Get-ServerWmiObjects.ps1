#använd Get-Wmiobject för att hämta information ur WMI och lagra i variabel
$computersystem = Get-WmiObject -Class Win32_Computersystem -ComputerName localhost
$computerOperatingsystem = Get-WmiObject -Class Win32_Operatingsystem -ComputerName localhost

# lagra informationen i ett nytt PSObject
$computerobject = New-Object -TypeName PSObject
$computerobject | Add-Member -NotePropertyValue $computerOperatingsystem.Caption -NotePropertyName OperationSystem
$computerobject | Add-Member -NotePropertyValue $computerOperatingsystem.BuildNumber -NotePropertyName OSBuildNumber
$computerobject | Add-Member -NotePropertyValue $computerOperatingsystem.Version -NotePropertyName OSVersion
$computerobject | Add-Member -NotePropertyValue $computersystem.Manufacturer -NotePropertyName ComputerManufacturer
$computerobject | Add-Member -NotePropertyValue $computersystem.Model -NotePropertyName ComputerModel

#skriv ut PSObject till pipeline
$computerobject