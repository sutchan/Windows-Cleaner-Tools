$f = 'e:\Github\Windows-Cleaner-Tools\Windows_Cleaner_GUI.ps1'
$b = [System.IO.File]::ReadAllBytes($f)
$bom = ($b[0] -eq 0xEF -and $b[1] -eq 0xBB -and $b[2] -eq 0xBF)
$tok = $null; $errs = $null
[System.Management.Automation.Language.Parser]::ParseFile($f, [ref]$tok, [ref]$errs)
$msg = if ($errs.Count -eq 0) { "BOM=$bom SYNTAX_OK" } else { "BOM=$bom ERRORS: " + ($errs.Message -join ' | ') }
$msg | Out-File -FilePath 'e:\Github\Windows-Cleaner-Tools\check_result.txt' -Encoding utf8
