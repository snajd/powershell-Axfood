#
# Lab 3.1.5
#


$datornamn = "srv02"

switch -Wildcard ($datornamn) {
    "*srv*" { "$datornamn är en server";break}
    "*client*" { "$datornamn är en klient";break}
    default { "kunde inte lista ut datornamnet" }
}
    