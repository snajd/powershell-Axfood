$notepadprocesses = get-process notepad
$notepadprocesses | Add-Member -NotePropertyValue "Robin Engström" -NotePropertyName "Namn"
$notepadprocesses.Namn