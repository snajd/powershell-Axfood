#
# MENU TOOL
#
# Extra LAb 1
#

do 
{
    write-host -BackgroundColor DarkRed -ForegroundColor Yellow "                                            "
    write-host -BackgroundColor DarkRed -ForegroundColor Yellow " **** *** * * SITE TESTER TOOL * * *** **** "
    write-host -BackgroundColor DarkRed -ForegroundColor Yellow "                                            "
    write-host -ForegroundColor green "1) Test Aftonbladet"
    write-host -ForegroundColor green "2) Test DN"
    write-host -ForegroundColor green "3) Test Svenska Dagbladet"
    write-host ""
    write-host -ForegroundColor Yellow "Or ress (Q) to quit" 
     
    $input = read-host "What site do you want to test?"
    switch ($input) {
        1 {$testsite = "www.aftonbladet.se"}
        2 {$testsite = "www.dn.se"}
        3 {$testsite = "www.svd.se"}
        }
        
        if ($input -ne "q") {
            if (Test-NetConnection -port 80 -ComputerName $testsite) {
                write-host -ForegroundColor White "$testsite is up!"
                write-host ""
                pause
            } else {
                write-host -ForeGroundColor Red "$testsite does'nt respond"
                pause
            }
        }


        

} while ($input -ne "q")