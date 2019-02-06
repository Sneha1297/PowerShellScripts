function New-File
{
    param (
        [string] $path,
        [string] $Filename, 
        [string] $Backupname
    )
   
    
    $res = test-file -path $path -Filename $Filename
    $result = Test-BackupFile -path $path -Backupname $Backupname
    $ErrorActionPreference = "stop" 
    <#captures error for the entire script#>
    write-host "$res" -ForegroundColor cyan
    try
    {
        write-host "within try block"
        if ($res)
        <#checks the existence of the file#>
        {
            write-host "Inside if" -ForegroundColor Green
    
            
            if ($result)
            <#checks for the existence of the copied file#>
            { 
                write-host "File copied successfully" -ForegroundColor   Green
                New-Item -Path (Join-Path $path -childpath $Filename) -ItemType File -force
            }
            else
            {
                Copy-Item -path (join-path $path -ChildPath $Filename) -Destination (join-path $path -ChildPath $Backupname)
            <# copies the file #>
                New-Item -Path (Join-Path $path -childpath $Filename) -ItemType File
            
            }
        
        }
        else
        { 
                write-host "inside else"
                New-Item -Path (Join-Path $path -childpath $Filename) -ItemType File
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




function Test-File
{

    param (
        [string] $path,
        [string] $Filename
    )
        
    $res = Join-Path $path -childpath $filename

    if (test-path ($res))
    {
        return $true
    }
    else
    {
        return $false
    }
    
}


function Test-BackupFile
{

    param (
        [string] $path,
        [string] $Backupname
    )
        
$result1 = Join-Path $path -childpath $Backupname

    if (test-path ($result1))
    {
        return $true
    }
    else {
        return $false
    }
    
}


# call function
New-File -Path "c:\temp" -FileName "test.txt" -BackupName "test_backup.txt"
test-file -Path "c:\temp" -FileName "test.txt"
