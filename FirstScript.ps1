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
$item=Get-ChildItem *.txt
$item
Get-ChildItem -Directory 
dir -ad
Get-ChildItem -Attributes Compressed
 $res=Get-ChildItem -Recurse | Where-Object { $_.LastWriteTime -lt "02/01/2019" }
$compareDate = (Get-Date).AddDays(-30) 
Get-ChildItem -Recurse | Where-Object { $_.LastWriteTime -ge $compareDate }
[DateTime]::IsLeapYear(2008) 
$daysTillChristmas = [DateTime] "December 25" - (Get-Date) 
$daysTillChristmas.Days 
