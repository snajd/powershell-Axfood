## lab 5.0.2

<#

return variant 1:
function Add-Values ($value1, $value2)
{
    $result = $value1 + $value2
    return $result
}
#>

#return variant 2
function Add-Values ($value1, $value2)
{
    return ($value1 + $value2)
}

[int]$input1 = Read-Host "Skriv ett värde: "
[int]$input2 = Read-Host "Skriv ett värde till: "

$resultat = Add-Values -value1 $input1 -value2 $input2

Write-Host "resultatet är $resultat"