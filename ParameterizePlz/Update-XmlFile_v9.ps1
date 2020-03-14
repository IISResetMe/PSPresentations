# Once again we simply lift a page out of `Get-Item`'s playbook!
# Make Path (wildcard support) and LiteralPath (verbatim paths) mutually exclusive with a ParameterSet definition!
# Offload further processing completely to the parameter binder by splatting @PSBoundParameter!

function Update-XmlFile{
    [CmdletBinding(DefaultParameterSetName = 'ByPath')]
    param(
        [Parameter(Position = 0, ValueFromPipeline = $true, ParameterSetName = 'ByPath')]
        [string[]]$Path,

        [Parameter(ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'ByLiteralPath')]
        [Alias('PSPath')]
        [string[]]$LiteralPath
    )

    process{
        foreach($file in Get-Item @PSBoundParameters){
            Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green
        }
    }
}

# Great, let's try

$files = Get-ChildItem C:\path\to\application\files\ -Filter *.xml
$files | Update-XmlFile # Oh yeah!

# Wildcard support, sexy!
Update-Xmlfile C:\path\to\application\files\*.xml
