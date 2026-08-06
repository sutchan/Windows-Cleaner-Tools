# Windows_Cleaner_GUI.ps1
# 版本: 1.0.0
# 描述: Windows 清理工具图形界面 (PowerShell + WinForms, 零依赖)
# 移植自 Windows_Cleaner_Enhanced.bat (v2.0.0) 与 legacy/Windows_Cleaner.bat (v1.0.0)
#
# 运行: 在 PowerShell 中执行 .\Windows_Cleaner_GUI.ps1
# 需要: Windows PowerShell 5.1 (系统自带) 或 PowerShell 7+, .NET Framework WinForms
# 说明: 标准清理 = v2.0.0 安全项; 高级清理 = v1.0.0 项(可能删除非可重建数据)

# ---------------------------------------------------------------------------
# 管理员自检
# ---------------------------------------------------------------------------
function Test-IsAdmin {
    $id = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $p = New-Object System.Security.Principal.WindowsPrincipal($id)
    return $p.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)
}

function Restart-AsAdmin {
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = 'powershell.exe'
    $psi.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`""
    $psi.Verb = 'runas'
    [System.Diagnostics.Process]::Start($psi) | Out-Null
    exit
}

# ---------------------------------------------------------------------------
# 清理函数
# ---------------------------------------------------------------------------
function Write-Log {
    param([string]$Msg)
    if ($Global:LogBox -and -not $Global:LogBox.IsDisposed) {
        $Global:LogBox.AppendText($Msg + "`r`n")
        $Global:LogBox.ScrollToCaret()
    }
}

function Remove-SafePath {
    param([string]$Path)
    $p = [System.Environment]::ExpandEnvironmentVariables($Path)
    if (-not (Test-Path $p)) {
        Write-Log "[跳过] 不存在: $p"
        return
    }
    try {
        Remove-Item $p -Recurse -Force -ErrorAction Stop
        Write-Log "[完成] 已删除: $p"
    } catch {
        Write-Log "[失败] $p : $_"
    }
}

function Clear-DirChildren {
    param([string]$BaseDir)
    $b = [System.Environment]::ExpandEnvironmentVariables($BaseDir)
    if (-not (Test-Path $b)) {
        Write-Log "[跳过] 目录不存在: $b"
        return
    }
    Get-ChildItem $b -Force -ErrorAction SilentlyContinue | ForEach-Object {
        try {
            Remove-Item $_.FullName -Recurse -Force -ErrorAction Stop
        } catch {
            Write-Log "[失败] $($_.FullName) : $_"
        }
    }
    Write-Log "[完成] 已清理: $b"
}

function Clear-RecycleBinDrive {
    param([string]$Drive)
    $target = Join-Path $Drive '$Recycle.Bin'
    if (-not (Test-Path $target)) {
        Write-Log "[跳过] 回收站不存在: $target"
        return
    }
    Get-ChildItem $target -Force -ErrorAction SilentlyContinue | ForEach-Object {
        Remove-SafePath $_.FullName
    }
    Write-Log "[完成] 回收站已处理: $Drive"
}

# ---------------------------------------------------------------------------
# 任务定义
# ---------------------------------------------------------------------------
# 每项: @{Key; Name; Kind; Target; Danger}
$STD_TASKS = @(
    @{Key='temp';       Name='临时文件 (%TEMP%)';                 Kind='glob'; Target='%TEMP%';                                    Danger=$false},
    @{Key='win_temp';   Name='Windows 临时目录';                  Kind='glob'; Target='%SystemRoot%\Temp';                         Danger=$false},
    @{Key='prefetch';   Name='预读取缓存 (Prefetch)';             Kind='glob'; Target='%SystemRoot%\Prefetch';                     Danger=$false},
    @{Key='recent';     Name='最近文档记录';                      Kind='glob'; Target='%APPDATA%\Microsoft\Windows\Recent';        Danger=$false},
    @{Key='thumbcache'; Name='缩略图缓存';                        Kind='glob'; Target='%LOCALAPPDATA%\Microsoft\Windows\Explorer'; Danger=$false},
    @{Key='edge_cache'; Name='Edge 浏览器缓存';                   Kind='glob'; Target='%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache';    Danger=$false},
    @{Key='chrome_cache'; Name='Chrome 浏览器缓存';               Kind='glob'; Target='%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache';    Danger=$false},
    @{Key='firefox_cache'; Name='Firefox 缓存';                   Kind='glob'; Target='%LOCALAPPDATA%\Mozilla\Firefox\Profiles';   Danger=$false},
    @{Key='recycle';    Name='回收站 (C:-L:)';                    Kind='recycle'; Target=$null;                                    Danger=$false}
)

$ADV_TASKS = @(
    @{Key='adv_browser'; Name='[高级] 浏览器缓存/配置';           Kind='glob'; Target='%LOCALAPPDATA%\Microsoft\Windows\INetCache'; Danger=$true},
    @{Key='adv_ime';     Name='[高级] 输入法数据 (IME)';          Kind='glob'; Target='%SystemRoot%\IME';                          Danger=$true},
    @{Key='adv_cursors'; Name='[高级] 鼠标指针 (Cursors)';        Kind='path'; Target='%SystemRoot%\Cursors';                      Danger=$true},
    @{Key='adv_help';    Name='[高级] 帮助文件 (Help)';           Kind='glob'; Target='%SystemRoot%\Help';                         Danger=$true},
    @{Key='adv_wallpaper'; Name='[高级] 墙纸 (Wallpaper)';        Kind='path'; Target='%SystemRoot%\Web\Wallpaper';                Danger=$true},
    @{Key='adv_rescache'; Name='[高级] 资源缓存 (rescache)';      Kind='path'; Target='%SystemRoot%\rescache';                     Danger=$true},
    @{Key='adv_fonts_cache'; Name='[高级] 字体缓存';              Kind='glob'; Target='%SystemRoot%\ServiceProfiles\LocalService\AppData\Local\FontCache'; Danger=$true},
    @{Key='adv_software'; Name='[高级] 常用软件缓存';             Kind='glob'; Target='%LOCALAPPDATA%';                            Danger=$true}
)

function Invoke-Task {
    param($Task)
    Write-Log "==> $($Task.Name)"
    switch ($Task.Kind) {
        'glob'    { Clear-DirChildren $Task.Target }
        'path'    { Remove-SafePath $Task.Target }
        'recycle' { 'C','D','E','F','G','H','I','J','K','L' | ForEach-Object { Clear-RecycleBinDrive ($_ + ':') } }
    }
}

# ---------------------------------------------------------------------------
# GUI
# ---------------------------------------------------------------------------
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = 'Windows 清理工具 v1.0.0 (GUI)'
$form.Size = New-Object System.Drawing.Size(700, 580)
$form.StartPosition = 'CenterScreen'

# 标题
$title = New-Object System.Windows.Forms.Label
$title.Text = 'Windows 清理工具 - 勾选需要清理的项, 点击「开始清理」'
$title.Font = New-Object System.Drawing.Font('Microsoft YaHei', 11, [System.Drawing.FontStyle]::Bold)
$title.AutoSize = $true
$title.Location = New-Object System.Drawing.Point(12, 10)
$form.Controls.Add($title)

# 面板(可滚动)
$panel = New-Object System.Windows.Forms.Panel
$panel.Location = New-Object System.Drawing.Point(12, 40)
$panel.Size = New-Object System.Drawing.Size(660, 360)
$panel.AutoScroll = $true
$form.Controls.Add($panel)

$checkboxes = @{}
$y = 6

$lblStd = New-Object System.Windows.Forms.Label
$lblStd.Text = '标准清理 (安全, 推荐)'
$lblStd.Font = New-Object System.Drawing.Font('Microsoft YaHei', 10, [System.Drawing.FontStyle]::Bold)
$lblStd.AutoSize = $true
$lblStd.Location = New-Object System.Drawing.Point(4, $y)
$panel.Controls.Add($lblStd)
$y += 24

foreach ($t in $STD_TASKS) {
    $cb = New-Object System.Windows.Forms.CheckBox
    $cb.Text = $t.Name
    $cb.Checked = $true
    $cb.AutoSize = $true
    $cb.Location = New-Object System.Drawing.Point(16, $y)
    $panel.Controls.Add($cb)
    $checkboxes[$t.Key] = $cb
    $y += 22
}

$y += 6
$lblAdv = New-Object System.Windows.Forms.Label
$lblAdv.Text = '高级清理 (来自 v1.0.0, 可能删除非可重建数据!)'
$lblAdv.Font = New-Object System.Drawing.Font('Microsoft YaHei', 10, [System.Drawing.FontStyle]::Bold)
$lblAdv.ForeColor = [System.Drawing.Color]::Red
$lblAdv.AutoSize = $true
$lblAdv.Location = New-Object System.Drawing.Point(4, $y)
$panel.Controls.Add($lblAdv)
$y += 24

foreach ($t in $ADV_TASKS) {
    $cb = New-Object System.Windows.Forms.CheckBox
    $cb.Text = $t.Name
    $cb.Checked = $false
    $cb.AutoSize = $true
    $cb.Location = New-Object System.Drawing.Point(16, $y)
    $panel.Controls.Add($cb)
    $checkboxes[$t.Key] = $cb
    $y += 22
}

# 进度条
$progress = New-Object System.Windows.Forms.ProgressBar
$progress.Style = 'Marquee'
$progress.Location = New-Object System.Drawing.Point(12, 408)
$progress.Size = New-Object System.Drawing.Size(660, 14)
$form.Controls.Add($progress)

# 日志框
$Global:LogBox = New-Object System.Windows.Forms.TextBox
$Global:LogBox.Multiline = $true
$Global:LogBox.ScrollBars = 'Vertical'
$Global:LogBox.ReadOnly = $true
$Global:LogBox.Font = New-Object System.Drawing.Font('Consolas', 9)
$Global:LogBox.Location = New-Object System.Drawing.Point(12, 428)
$Global:LogBox.Size = New-Object System.Drawing.Size(660, 90)
$form.Controls.Add($Global:LogBox)

# 按钮区
$btnAll = New-Object System.Windows.Forms.Button
$btnAll.Text = '全选'; $btnAll.Location = New-Object System.Drawing.Point(12, 524)
$btnAll.Size = New-Object System.Drawing.Size(70, 28)
$form.Controls.Add($btnAll)

$btnNone = New-Object System.Windows.Forms.Button
$btnNone.Text = '全不选'; $btnNone.Location = New-Object System.Drawing.Point(90, 524)
$btnNone.Size = New-Object System.Drawing.Size(70, 28)
$form.Controls.Add($btnNone)

$btnStart = New-Object System.Windows.Forms.Button
$btnStart.Text = '开始清理'; $btnStart.Location = New-Object System.Drawing.Point(168, 524)
$btnStart.Size = New-Object System.Drawing.Size(80, 28)
$form.Controls.Add($btnStart)

$btnStop = New-Object System.Windows.Forms.Button
$btnStop.Text = '停止'; $btnStop.Location = New-Object System.Drawing.Point(256, 524)
$btnStop.Size = New-Object System.Drawing.Size(70, 28)
$form.Controls.Add($btnStop)

$btnAdmin = New-Object System.Windows.Forms.Button
$btnAdmin.Text = '以管理员重启'; $btnAdmin.Location = New-Object System.Drawing.Point(602, 524)
$btnAdmin.Size = New-Object System.Drawing.Size(90, 28)
$form.Controls.Add($btnAdmin)

# 状态变量
$script:Running = $false
$script:StopFlag = $false

$btnAll.Add_Click({ foreach ($c in $checkboxes.Values) { $c.Checked = $true } })
$btnNone.Add_Click({ foreach ($c in $checkboxes.Values) { $c.Checked = $false } })

$btnAdmin.Add_Click({ Restart-AsAdmin })

$btnStop.Add_Click({
    $script:StopFlag = $true
    Write-Log '[提示] 已请求停止, 当前任务完成后将中止。'
})

$btnStart.Add_Click({
    if ($script:Running) { return }
    $selected = @()
    foreach ($t in ($STD_TASKS + $ADV_TASKS)) {
        if ($checkboxes[$t.Key].Checked) { $selected += $t }
    }
    if ($selected.Count -eq 0) {
        [System.Windows.Forms.MessageBox]::Show('请先勾选至少一项。', '提示', 'OK', 'Information')
        return
    }
    $script:Running = $true
    $script:StopFlag = $false
    $progress.Visible = $true
    $btnStart.Enabled = $false

    $runspace = [runspacefactory]::CreateRunspace()
    $runspace.Open()
    $runspace.SessionStateProxy.SetVariable('Selected', $selected)
    $runspace.SessionStateProxy.SetVariable('LogBox', $Global:LogBox)
    $runspace.SessionStateProxy.SetVariable('StopFlagRef', [ref]$script:StopFlag)

    $ps = [powershell]::Create().AddScript({
        param($Selected, $StopFlagRef)
        function Write-Log {
            param([string]$Msg)
            if ($LogBox -and -not $LogBox.IsDisposed) {
                $LogBox.AppendText($Msg + "`r`n")
                $LogBox.ScrollToCaret()
            }
        }
        function Remove-SafePath {
            param([string]$Path)
            $p = [System.Environment]::ExpandEnvironmentVariables($Path)
            if (-not (Test-Path $p)) { Write-Log "[跳过] 不存在: $p"; return }
            try { Remove-Item $p -Recurse -Force -ErrorAction Stop; Write-Log "[完成] 已删除: $p" }
            catch { Write-Log "[失败] $p : $_" }
        }
        function Clear-DirChildren {
            param([string]$BaseDir)
            $b = [System.Environment]::ExpandEnvironmentVariables($BaseDir)
            if (-not (Test-Path $b)) { Write-Log "[跳过] 目录不存在: $b"; return }
            Get-ChildItem $b -Force -ErrorAction SilentlyContinue | ForEach-Object {
                try { Remove-Item $_.FullName -Recurse -Force -ErrorAction Stop }
                catch { Write-Log "[失败] $($_.FullName) : $_" }
            }
            Write-Log "[完成] 已清理: $b"
        }
        function Clear-RecycleBinDrive {
            param([string]$Drive)
            $target = Join-Path $Drive '$Recycle.Bin'
            if (-not (Test-Path $target)) { Write-Log "[跳过] 回收站不存在: $target"; return }
            Get-ChildItem $target -Force -ErrorAction SilentlyContinue | ForEach-Object { Remove-SafePath $_.FullName }
            Write-Log "[完成] 回收站已处理: $Drive"
        }
        Write-Log "开始清理, 共 $($Selected.Count) 项..."
        foreach ($t in $Selected) {
            if ($StopFlagRef.Value) { Write-Log '[中止] 用户已停止。'; break }
            Write-Log "==> $($t.Name)"
            switch ($t.Kind) {
                'glob'    { Clear-DirChildren $t.Target }
                'path'    { Remove-SafePath $t.Target }
                'recycle' { 'C','D','E','F','G','H','I','J','K','L' | ForEach-Object { Clear-RecycleBinDrive ($_ + ':') } }
            }
        }
        Write-Log '全部任务结束。'
    }).AddArgument($selected).AddArgument([ref]$script:StopFlag)

    $ps.Runspace = $runspace
    $async = $ps.BeginInvoke()

    $form.BeginInvoke([Action]{
        while (-not $async.IsCompleted) {
            [System.Windows.Forms.Application]::DoEvents()
            Start-Sleep -Milliseconds 100
        }
        try { $ps.EndInvoke($async) } catch { Write-Log "[异常] $_" }
        $ps.Dispose(); $runspace.Close(); $runspace.Dispose()
        $progress.Visible = $false
        $btnStart.Enabled = $true
        $script:Running = $false
    }) | Out-Null
})

# 启动检查
if (-not (Test-IsAdmin)) {
    [System.Windows.Forms.MessageBox]::Show(
        '部分清理项需要管理员权限才能删除系统文件。' + [Environment]::NewLine + '点击「以管理员重启」按钮以管理员身份重新运行。',
        '需要管理员权限', 'OK', 'Warning')
}

[System.Windows.Forms.Application]::EnableVisualStyles() | Out-Null
$form.ShowDialog() | Out-Null
