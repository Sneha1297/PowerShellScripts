$contentlines = [System.IO.File]::ReadAllLines("Desktop\First.txt")
$contentLines
Select-String -Simple it -Path Desktop\First.txt
Get-ChildItem *.txt -Recurse | Select-String z
$matches = Select-String "Power shell" -Path Desktop\First.txt
$matches | Select LineNumber, Line
$filename = [System.IO.Path]::GetTempFileName() 
New-TemporaryFile
$temp = New-TemporaryFile
$temp.FullName
gps | Out-File $temp.FullName
notepad $temp.FullName