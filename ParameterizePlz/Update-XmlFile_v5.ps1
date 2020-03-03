# Still just a simple function!
# But with a strongly-typed parameter now!

function Update-XmlFile {
    param(
        [string]$filepath
    )

    $file = Get-Item $filepath
    <# ... #>
    Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green
}

# Can we leverage the pipeline as well? Sort of...
$paths = @(
    "C:\path\to\application\files\file.xml"
    "C:\path\to\application\files\file2.xml"
    "C:\path\to\application\files\file3.xml"
)

$paths |ForEach-Object {
    Update-XmlFile -filepath $_
}

# What about this though? 
$paths | Update-XmlFile 