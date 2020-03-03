# Now we're cooking! 
# Note: Adding a [Parameter()] attribute changes the behavior of our function - it's now behaving like a cmdlet!

function Update-XmlFile{
    param(
        [Parameter(ValueFromPipeline = $true)]
        [string]$filepath
    )
    
    $file = Get-Item $filepath

    Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green
}

$paths = @(
    "C:\path\to\application\files\file.xml"
    "C:\path\to\application\files\file2.xml"
)

$paths |Update-XmlFile # still half-broken though...! Why does it fail with multiple inputs? (only last input processed)