#
# Lab 3.1.3 with changes
#


$test = read-host "Skriv ett tal"
if ($test -eq 10) {
    write-host "$test equals 10"
} elseif ($test -eq 11) {
    write-host "$test equals 11"
} elseif ($test -eq 3) {
    write-host "$test equals 3"
} else {
    write-host "$test does not equal 10"
} 