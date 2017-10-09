#
# Lab 3.2.3
#
# Using Out-Gridview as a filtering tool

$processes = Get-Process | Out-GridView -PassThru

foreach ($process in $processes) {
    Stop-Process $process
    Write-Host "Stopping process $process"
}
