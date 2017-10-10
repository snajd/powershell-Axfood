# create 100 users

$user = "USER"
for ($i = 0; $i -ile 200; $i++) {
    $user + $i | out-file c:\temp\users.txt -Append
    
    }