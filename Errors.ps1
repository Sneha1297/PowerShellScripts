function New-File
{
    param (
        [string] $path,
        [string] $Filename, 
        [string] $Backupname
    )
   
    
    #path = "C:\temp"
    #$filename = "\severs.txt"
    $res = Join-Path $path -childpath $filename
    $res
    #$path1 = "C:\temp"
    #$Backupname = "\servers_backup.txt"
    $result = Join-Path $path1 -childpath $Backupname
    $result
    $ErrorActionPreference = "stop" 
    <#
captures error for the entire script#>
    try
    {
        write-host "within try block"
        if (test-Path $res)
        <#checks the existence of the file#>
        {
            write-host "Inside if" -ForegroundColor Green
        
            Copy-Item -path $res -Destination $result
            <# copies the file #>

            if (test-path $result)
            <#checks for the existence of the copied file#>
            { 
                write-host "File copied successfully" -ForegroundColor   Green
            }
            else
            {
                New-Item -Path $res -Force > $null 
            
            }
        
        }
        else
        { 
            {
            
                write-host "inside else"
                #New-Item -Path C:\temp\severs.txt
            }
        }
    }
    catch
    {
        write-host "Within catch block" -ForegroundColor Blue
        #  write-host "Error"
        write-host "There seems to be an error.Error is as follows $_.Exception"

    }
    Finally
    {
        write-host "Within finally"
    }
}

get-verb

