gps
Get-Content -Path Desktop\First.txt
$file = Get-Item -Path Desktop\First.txt
 $file.Attributes = "ReadOnly,NotContentIndexed"
 $notepad
$processes = Get-Process
$processes

$newProcesses = Get-Process
$res = Compare-Object $processes $newProcesses
Compare-Object $processes $newProcesses -Property Name,WS | Sort Name
Get-EventLog -List
Get-WinEvent -ListLog * | Select LogName, RecordCount
Get-EventLog System -Newest 10 | Format-Table Index, Source, Message -Auto
Get-Process | Where-Object { $_.WorkingSet -gt 100mb }
Get-Process | Group-Object Company
Get-Process | Sort -Descending StartTime | Select-Object -First 10
Start-Process http://blogs.msdn.com/powershell
start http://www.bing.com
notepad
Get-Process Notepad
Debug-Process
Get-Service
Get-Service | Where-Object { $_.Status -eq "Running" }
Stop-Service AudioSrv -WhatIf
Get-CimInstance Win32_NetworkAdapterConfiguration -Computer LEE-DESK |    Where-Object { $_.IpEnabled }
Get-Content -Path Desktop\First.txt
"Hello" > First.txt
Get-Item First.txt
Get-Content First.txt
Get-Content -Path Desktop\First.txt
Register-EngineEvent -SourceIdentifier Custom.Event `    -Action { Write-Host "Received Event" }
$null = New-Event Custom.Event 
2 + 2
"The answer is  $(2 + 2)"
Get-Content -Path "C:\Users\srenga527\Desktop\First.txt"