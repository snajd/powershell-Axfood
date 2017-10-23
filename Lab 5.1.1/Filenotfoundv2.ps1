Function Do-Something {
    if ($users -like '*Snorri*') {
    throw "Snorri hittad i filen! Avbryt!"
    }
}



try 
{
    $users = Import-Csv .\Users.csv -Delimiter ";" -ErrorAction Stop
    Do-Something   
}
catch [System.UnauthorizedAccessException]
{
    Write-host "Du har ej behörighet till att läsa filen"
}
catch [System.IO.FileNotFoundException]
{
    write-host "kunde inte hitta filen"
}
catch
{
    Write-Host $_.Exception.Message
}

