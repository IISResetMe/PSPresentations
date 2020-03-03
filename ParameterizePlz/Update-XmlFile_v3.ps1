# Simple script, hardcoded values
# But now there's waaaaaay too much code - unmaintainable!!!

$filepath = "C:\path\to\application\files\file.xml"
$filepath2 = "C:\path\to\application\files\file2.xml"
$filepath3 = "C:\path\to\application\files\file3.xml"
$filepath4 = "C:\path\to\application\files\file4.xml"
$filepath5 = "C:\path\to\application\files\file5.xml"
$filepath6 = "C:\path\to\application\files\file6.xml"
$filepath7 = "C:\path\to\application\files\file7.xml"

$file = Get-Item $filepath
<# ... #>
Write-Host "Updating $($file.FullName) attributes" -ForegroundColor Green

$file2 = Get-Item $filepath2
<# ... #>
Write-Host "Updating $($file2.FullName) attributes" -ForegroundColor Green

$file3 = Get-Item $filepath3
<# ... #>
Write-Host "Updating $($file3.FullName) attributes" -ForegroundColor Green

$file4 = Get-Item $filepath4
<# ... #>
Write-Host "Updating $($file4.FullName) attributes" -ForegroundColor Green

$file5 = Get-Item $filepath5
<# ... #>
Write-Host "Updating $($file5.FullName) attributes" -ForegroundColor Green

$file6 = Get-Item $filepath6
<# ... #>
Write-Host "Updating $($file6.FullName) attributes" -ForegroundColor Green

$file7 = Get-Item $filepath7
<# ... #>
Write-Host "Updating $($file7.FullName) attributes" -ForegroundColor Green
