#
# FOLDER CREATION TOOL 
# Extra Lab 2

$folder1 = "Documents"
$folder2 = "Pictures"
$folder3 = "Desktop"

$rootpath = "C:\temp\Users"

$users = Get-content C:\temp\users.txt

foreach ($user in $users) {

    New-Item -Path c:\temp\$user\$folder1 -ItemType Directory
    New-Item -Path c:\temp\$user\$folder2 -ItemType Directory
    New-Item -Path c:\temp\$user\$folder3 -ItemType Directory
}