(Get-Content  -Path Desktop\First.txt) -replace 'This', 'It'
"Hello World" | Format-Hex
$xml = [xml] (Get-Content -path Desktop\xml.xml)
$xml
$xml.rss
($xml.rss.channel.item).Count 
$object = [PSCustomObject] @{    Name = "Lee"; Phone = "555-1212" }
$json = ConvertTo-Json $object 
$json


$filename = "Desktop\Daily report.csv" 
$output = Get-ChildItem -Attributes Directory |    Select-Object Name, @{ Name = "Size"; Expression = { ($_ | Get-ChildItem -Recurse |               Measure-Object -Sum Length).Sum + 0 } }
$output | Export-Csv $filename
Invoke-Item $filename
param([double] $fahrenheit)
## Convert it to Celsius
$fahrenheit=Read-Host -Prompt 'Input fahrenheit'
$celsius = $fahrenheit - 32
$celsius = $celsius / 1.8
$celsius
$fahrenheit=Read-Host -Prompt 'Input fahrenheit'
function ConvertFahrenheitToCelsius([double] $fahrenheit) 
{    $celsius = $fahrenheit - 32
    $celsius = $celsius / 1.8     $celsius 
}


$Server = Read-Host -Prompt 'Input your server  name'

