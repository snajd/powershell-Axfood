#
# Lab 3.1.2
#

param ($servicename)
Get-Service -DisplayName *$servicename* | Format-Table DisplayName, Name, Status -AutoSize