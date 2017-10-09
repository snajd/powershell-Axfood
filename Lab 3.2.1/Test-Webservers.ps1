#
# Lab 3.2.1
#

$webservers = Get-Content .\webservers.txt

foreach ($webserver in $webservers) {
    Test-Connection $webserver -Count 1
    Test-NetConnection $webserver
}