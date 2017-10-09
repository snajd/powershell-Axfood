 param($path = "C:\Windows")
  
 $files = Get-ChildItem -Path $path
 
          foreach ($file in $files)
          {
              if ($file.length -gt 1MB) 
              {
                  Write-Host $file
              }
          } 
