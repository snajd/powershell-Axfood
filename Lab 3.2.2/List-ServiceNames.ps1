#
# Lab 3.2.2
#

$services = Get-Service
foreach ($service in $services) {
    write-host $service.name
}