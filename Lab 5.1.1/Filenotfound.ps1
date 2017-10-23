try 
{
    $users = Import-Csv c:\temp\Users2.csv -Delimiter ";" -ErrorAction Stop
}
catch
{
    Write-host $_.exception.message
}

Format-Table -InputObject $users