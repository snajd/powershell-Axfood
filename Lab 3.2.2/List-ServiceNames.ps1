
$services = Get-Service
foreach ($service in $services) {
    write-host $service.name
}