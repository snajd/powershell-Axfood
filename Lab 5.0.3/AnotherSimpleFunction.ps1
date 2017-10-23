function Get-PCSystemType
{
    $computertype = (Get-WmiObject -Class win32_computersystem).PCSystemType
    
    switch ($computertype) {
    0 {write-host "Unspecified"}
    1 {write-host "Desktop"}
    2 {write-host "Mobile"}
    3 {write-host "Workstation"}
    4 {write-host "Enterprise Server"}
    5 {write-host "SOHO Server"}
    6 {write-host "Appliance PC"}
    7 {write-host "Performance Server"}
    8 {write-host "Maximum"}
    }
}

if (Get-PCSystemType -eq "Mobile") {
    Write-host "the system is mobile, lets check the battery"
    write-host "the battery has $($(Get-WmiObject win32_battery).EstimatedChargeRemaining)"
}