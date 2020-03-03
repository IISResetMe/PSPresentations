# Let's emulate the behavior of `Get-Item -LiteralPath`
# Add `ValueFromPipelineByPropertyName` option to Parameter attribute
# Add a parameter alias for the `PSPath` NoteProperty that PowerShell's type system adds automatically to provider items

function Update-XmlFile{
    param(
        [Parameter(ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [Alias('PSPath')]
        [string[]]$filepath
    )
    
    process{
        foreach($value in $filepath){
            $file = Get-Item $value
            Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green
        }
    }
}

# Great, let's try
$files = Get-ChildItem C:\path\to\application\files\ -Filter *.xml
$files | Update-XmlFile # Oh yeah!

# But what about Wildcard/Literal support?