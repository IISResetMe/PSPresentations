# Simple script, hardcoded values

$filepath = "C:\path\to\application\files\file.xml"

$file = Get-Item $filepath

# Write-Host statement below, but imagine this script did something meaningful, like
# updating an XML document and setting some file attributes
# $xml = Get-Content $file.FullName
# $node = $xml.SelectSingleNode(//Some[@condition=1])
# $node.SetAttribute("x","y")

# if($file.Attributes -notlike 'Archive'){
#    $file.Attributes = $file.Attributes -band [System.IO.FileAttributes]::Archive
# }

Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green
