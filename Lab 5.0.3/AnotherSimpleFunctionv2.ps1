function Get-PCSystemType
{
    $computertype = (Get-WmiObject -Class win32_computersystem).PCSystemType
    
    switch ($computertype) {
    0 {return "Unspecified"}
    1 {return "Desktop"}
    2 {return "Mobile"}
    3 {return "Workstation"}
    4 {return "Enterprise Server"}
    5 {return "SOHO Server"}
    6 {return "Appliance PC"}
    7 {return "Performance Server"}
    8 {return "Maximum"}
    }
}

if (Get-PCSystemType -eq Mobile) {
    Write-host "the system is mobile, lets check the battery..."
    write-host "the battery has $($(Get-WmiObject win32_battery).EstimatedChargeRemaining) charge left"
}