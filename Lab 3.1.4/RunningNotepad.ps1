#
# Lab 3.1.4
#

$process = Get-Process -Name notepad -ErrorAction SilentlyContinue

if ($process) {
    write-host "notepad is already running"
} else {
    write-host "notepad is not running!!! Starting..."
    Start-Process notepad
}