# utan script: New-ADUser -Name "Kalle Karlsson" -samAccountName "kaka" -Displayname "Kalle Karlsson" -GivenName "Kalle" -SurName "Karlsson" -Department "Finance" -Postalcode "38200" -StreetAddress "Kungshallsvägen 9" -City "Nybro" -Title "Senior Associate" -MobilePhone "0701318822"


# hämta in information från en csv
$users = Import-Csv .\Users.csv -Delimiter ";"

# skapa ett Custom PSObject av varje rad. Vi är intresserade av det som ska till AD.
foreach ($user in $users) {
    
    # skapa ett nytt, tomt PSObject
    $u = New-Object -TypeName PSObject
    
    # lägg till members för diverse
    $u | Add-Member -NotePropertyValue ($user.Firstname + " " + $user.Lastname) -NotePropertyName Name
    $u | Add-Member -NotePropertyValue ($user.Firstname + " " + $user.Lastname) -NotePropertyName DisplayName 
    $u | Add-Member -NotePropertyValue $user.Firstname                          -NotePropertyName GivenName
    $u | Add-Member -NotePropertyValue $user.Lastname                           -NotePropertyName Surname
    $u | Add-Member -NotePropertyValue $user.Department                         -NotePropertyName Department
    $u | Add-Member -NotePropertyValue $user.ZIP                                -NotePropertyName Postalcode
    $u | Add-Member -NotePropertyValue $user.'Address 1'                        -NotePropertyName StreetAddress
    $u | Add-Member -NotePropertyValue $user.'Address 2'                        -NotePropertyName City
    $u | Add-Member -NotePropertyValue $user.Title                              -NotePropertyName Title
    $u | Add-Member -NotePropertyValue $user.'Phone Number'                     -NotePropertyName MobilePhone
    
    # kör funktion med Förnamn + Efternamn som parametrar och spara svaret i samAccountname
    $username = GenerateUserName -firstname $user.Firstname -lastname $user.Lastname
    $u | Add-Member -NotePropertyValue $username                                -NotePropertyName samAccountname
    # lägg till property för dagens datum
    $u | Add-Member -NotePropertyValue "Account Added on $(get-date -Format yyMMdd)" -NotePropertyName Description
    
    # skriv $u till pipeline
    Write-Output $u
}



# vi behöver ett username. Skapa funktion som generar av första två i förnamn och efternamn.
function GenerateUserName {
    param ($firstname, $lastname)

    $FirstTwo = $firstname.Substring(0, 2)
    $LastTwo = $lastname.SubString(0, 2)
    $Username = $FirstTwo + $LastTwo
    return $Username.ToLower()
}
