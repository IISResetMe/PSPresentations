# Since we now have a "script cmdlet" (aka. an "advanced function"), we need to implement a process block
# Note: change in parameter type ([string] -> [string[]]) to accept multiple inputs when _not_ used in pipeline mode

function Update-XmlFile{
    param(
        [Parameter(ValueFromPipeline = $true)]
        [string[]]$filepath
    )
    
    process {
        foreach($value in $filepath){
            $file = Get-Item $value
            
            Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green
        }
    }
}

$paths = @(
    "C:\path\to\application\files\file.xml"
    "C:\path\to\application\files\file2.xml"
)

$paths |Update-XmlFile # no longer broken!

# Great, let's try
$files = Get-ChildItem C:\path\to\application\files\ -Filter *.xml |Where-Object { $_.Length -gt 1KB}

$files | Update-XmlFile # Oops, broken again! What gives?!