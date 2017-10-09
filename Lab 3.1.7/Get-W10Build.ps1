#
# Lab 3.1.7
#

$w10version = (Get-WmiObject win32_operatingsystem).version

switch -wildcard ($w10version)
{
    "*16299*" { "1709, Fall Creators Update"}
    "*15063*" { "1703, Creators Update" }
    "*14393*"  { "1607,  Anniversary Update" }
    "*10586*" { "1511, November Update" }

}