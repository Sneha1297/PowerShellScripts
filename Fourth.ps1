gps
Get-Content -Path Desktop\Sec.txt
$file = Get-Item -Path Desktop\First.txt
 $file.Attributes = "ReadOnly,NotContentIndexed"
 $notepad
$processes = Get-Process
$processes

$newProcesses = Get-Process
$res = Compare-Object $processes $newProcesses
Compare-Object $processes $newProcesses -Property Name,WS | Sort Name
Get-EventLog -List
Get-WinEvent -ListLog * | Select LogName,RecordCount