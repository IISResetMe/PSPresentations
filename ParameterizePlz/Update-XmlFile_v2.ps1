# Simple script, hardcoded values
# But now there's twice as much code!

$filepath = "C:\path\to\application\files\file.xml"

$file = Get-Item $filepath

# $xml = Get-Content $file.FullName
# $node = $xml.SelectSingleNode(//Some[@condition=1])
# $node.SetAttribute("x","y")

# if($file.Attributes -notlike 'Hidden'){
#     $file.Attributes = $file.Attributes -band [System.IO.FileAttributes]::Archive
# }

Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green

$filepath2 = "C:\path\to\application\files\file2.xml"

$file2 = Get-Item $filepath2

# $xml2 = Get-Content $file2.FullName
# $node2 = $xml2.SelectSingleNode(//Some[@condition=1])
# $node2.SetAttribute("x","y")

# if($file2.Attributes -notlike 'Hidden'){
#     $file2.Attributes = $file2.Attributes -band [System.IO.FileAttributes]::Archive
# }

Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green
