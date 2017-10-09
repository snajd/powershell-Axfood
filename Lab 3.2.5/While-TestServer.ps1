do {
    $server = Read-Host "Type in a servername to ping. Press (Q) to quit: "     
    if ($server -ne "Q") {
        Test-Connection -Count 1 $server
        } 
} while ($server -ne "Q")
