$f = 'e:\Github\Windows-Cleaner-Tools\Windows_Cleaner_GUI.ps1'
$b = [System.IO.File]::ReadAllBytes($f)
$bom = ($b[0] -eq 0xEF -and $b[1] -eq 0xBB -and $b[2] -eq 0xBF)
if (-not $bom) {
    $c = [System.IO.File]::ReadAllText($f, [System.Text.Encoding]::UTF8)
    [System.IO.File]::WriteAllText($f, $c, ([System.Text.UTF8Encoding]::new($true)))
    'CONVERTED_TO_BOM' | Out-File -FilePath 'e:\Github\Windows-Cleaner-Tools\fix_result.txt' -Encoding utf8
} else {
    'ALREADY_BOM' | Out-File -FilePath 'e:\Github\Windows-Cleaner-Tools\fix_result.txt' -Encoding utf8
}
