function Get-Cpu
{ 
    param( 
        $computername = $env:computername 
    ) 
    $os = gwmi win32_perfformatteddata_perfos_processor -ComputerName $computername| ? {$_.name -eq "_total"} | select -ExpandProperty PercentProcessorTime  -ea silentlycontinue 
    if (($os -match '\d+') -or ($os -eq '0'))
    { 
        $results = new-object psobject 
        $results |Add-Member noteproperty Cputil  $os 
        $results |Add-Member noteproperty ComputerName  $computername  
        $results | Select-Object computername, Cputil 
    } 
    else
    { 
        $results = new-object psobject 
        $results |Add-Member noteproperty Cputil  "Na" 
        $results |Add-Member noteproperty ComputerName  $computername  
        $results | Select-Object computername, Cputil 
    } 
}  














$infcpu = @() 

#######################cpu function end################# 

#server location  
$servers = Get-Content -Path C:\servers.txt 

foreach ($server in $servers)
{ 

    $infcpu += get-Cpu  $server  
} 

$infcpu 



#useage Get-cpu -computername server1 
