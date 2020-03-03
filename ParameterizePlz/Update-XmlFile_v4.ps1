# Let's turn it into a simple function!

function Update-XmlFile($filepath = "C:\path\to\application\files\file.xml"){

    $file = Get-Item $filepath
    <# ... #>
    Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green
}

# Now we can re-use it with variable file path arguments!
Update-XmlFile
$filepath2 = "C:\path\to\application\files\file.xml"
Update-XmlFile -filepath $filepath2
Update-XmlFile -filepath "C:\heres a path to another.xml"