#
# MENU TOOL
#

do 
{
    write-host -ForegroundColor green "1) Testa Aftonbladet"
    write-host -ForegroundColor green "2) Testa DN"
    write-host -ForegroundColor green "3) Testa Svenska Dagbladet"
    write-host -ForegroundColor Yellow "Tryck "Q" för att avbryta" 
     
    $input = read-host "Vilken site vill du testa?"
    switch ($input) {
        1 {$testsite = "www.aftonbladet.se"}
        2 {$testsite = "www.dn.se"}
        3 {$testsite = "www.svd.se"}
        }
        write-host -ForegroundColor green "1) Testa Aftonbladet"
        write-host -ForegroundColor green "2) Testa DN"
        write-host -ForegroundColor green "3) Testa Svenska Dagbladet"
        write-host -ForegroundColor Yellow "Tryck "Q" för att avbryta"
        
        if (Test-NetConnection -port 80 -ComputerName $testsite) {
            Clear-Host
            write-host -ForegroundColor White "$testsite är uppe!"
            write-host ""
            pause
        } else {
            clear-host
            write-host -ForeGroundColor Red "$testsite svarar inte"
            pause
        }
        

} while ($input -ne "q")