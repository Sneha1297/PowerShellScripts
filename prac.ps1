test-Path C:\temp\severss.txt
Copy-Item -path C:\temp\severs.txt -Destination C:\temp\severs_backup.txt
test-path C:\temp\severs_backup.txt
New-Item -Path C:\temp\severs.txt -Force

$path = "C:\temp"
$filename="\severs.txt"
$res = Join-Path $path -childpath $filename
$res
$result = "C:temp\$filename"
$result