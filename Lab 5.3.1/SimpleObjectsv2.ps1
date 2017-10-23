$os = Get-WmiObject -class win32_operatingsystem
$computer = Get-WmiObject -Class win32_computersystem

# first, we define the variable output as a PSObject
$output = New-Object -TypeName PSObject

# then we pipe the $output variable to Add-Member and add NotePropertyValyes = Values, and assign them names = NotePropertyNames.
# We can call the names whatever we want. This will be the names of the objects and the properties of the objects will be what 
# we put in the NotePropertyValues
$output | Add-Member -NotePropertyValue $os.BuildNumber -NotePropertyName Buildnumber
$output | Add-Member -NotePropertyValue $computer.DNSHostName -NotePropertyName Hostname

# lastly we use Write-Output to put the content of the $output variable on the pipeline
Write-Output $output