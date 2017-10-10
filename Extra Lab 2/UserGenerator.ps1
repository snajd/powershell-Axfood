# create 200 users

$user = "USER"
for ($i = 0; $i -le 200; $i++) {
    $user + $i | out-file c:\temp\users.txt -Append
    
    }

