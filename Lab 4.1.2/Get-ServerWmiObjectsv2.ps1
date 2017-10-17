# lagra alla servernamn vi vill undersöka i en variabel
#$servers = "SRV01","SRV02","SRV03"
$servers = "localhost", "localhost"

# för varje $server i listan, gör följande:
foreach ($server in $servers) {
    #använd Get-Wmiobject för att hämta information ur WMI och lagra i variabel
    $computersystem = Get-WmiObject -Class Win32_Computersystem -ComputerName $server
    $computerOperatingsystem = Get-WmiObject -Class Win32_Operatingsystem -ComputerName $server

    # lagra informationen i ett nytt PSObject
    $computerobject = New-Object -TypeName PSObject
    $computerobject | Add-Member -NotePropertyValue $computerOperatingsystem.Caption -NotePropertyName OperationSystem
    $computerobject | Add-Member -NotePropertyValue $computerOperatingsystem.BuildNumber -NotePropertyName OSBuildNumber
    $computerobject | Add-Member -NotePropertyValue $computerOperatingsystem.Version -NotePropertyName OSVersion
    $computerobject | Add-Member -NotePropertyValue $computersystem.Manufacturer -NotePropertyName ComputerManufacturer
    $computerobject | Add-Member -NotePropertyValue $computersystem.Model -NotePropertyName ComputerModel

    #skriv ut PSObject till pipeline
    $computerobject
}