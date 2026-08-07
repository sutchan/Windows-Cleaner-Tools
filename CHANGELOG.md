# 更新日志 (Changelog)

本项目所有重要变更均记录于此文件。

格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)，
版本号遵循 [语义化版本](https://semver.org/lang/zh-CN/) (SemVer)。

## [2.1.0] - 2026-08-07

### 新增 (Added)
- 零依赖图形界面 `Windows_Cleaner_GUI.ps1`（PowerShell 5.1 + WinForms）
  - 分项勾选清理（标准项 / 高级项）
  - 实时进度条与日志输出（后台 runspace，避免 UI 卡顿）
  - 管理员权限自检与「以管理员重启」
  - 开始清理前二次确认弹窗（列出待清理项并警示危险项）
  - DPI 自适应，固定尺寸 720×700，高 DPI 下窗口不裁切
- GUI 启动器 `启动清理工具.bat`，以隐藏窗口方式启动，避免弹出 PowerShell 控制台
- `legacy/` 目录归档原始危险脚本 `Windows_Cleaner.bat`（v1.0.0）

### 修复 (Fixed)
- GUI 窗口显示不全：窗体高度提升至 700，底部控件设 `Anchor=Bottom` 自适应
- GUI 运行弹出 PowerShell 窗口：`Restart-AsAdmin` 与启动器均加 `-WindowStyle Hidden`
- GUI `firefox_cache` 误删整个 Firefox Profiles 目录 → 限定到 `cache2`/`cache` 子目录
- `Windows_Cleaner_Enhanced.bat` 横幅中文乱码 → 改纯 ASCII
- README/OPENSPEC 中 GUI 与启动器内容不一致 → 双语文档同步
- `Windows_Cleaner_Enhanced.bat` 构建日期 `20240506` 残留 → 修正为 `20260807`
- OPENSPEC 系统清理清单仍列 `Resource cache`/`Setup folders` → 与代码对齐移除并标注 SAFE 跳过

### 安全 (Security)
- `legacy/Windows_Cleaner.bat` 首行加 `exit /b` 禁止直接运行，并注释所有系统级破坏性命令
  （wuauclt 删除、knlrun 禁用、C:\Recovery、IME/Cursors/Help/rescache、boot 语言包、硬编码个人路径等）
- GUI 移除删除系统关键目录的高级项（Cursors / Help / Wallpaper / rescache / IME），
  仅保留浏览器缓存、字体缓存、软件缓存类安全高级项
- CLI `Windows_Cleaner_Enhanced.bat` 同步注释化 `rescache`、`Setup` 的 `RD /S /Q` 删除，
  与 GUI 行为一致，避免误删系统核心目录
- 清理任务默认均不勾选，危险项标红并需二次确认

### 重构 (Refactored)
- 移除 GUI 未使用的 `Invoke-Task` 死代码
- 统一文档结构与项目树描述

## [2.0.0] - 2024-05-06

### 新增 (Added)
- 管理员权限检查机制
- 模块化代码结构
- Windows 版本自动检测
- 错误抑制，确保清理过程不中断
- 移除潜在危险的系统修改操作，大幅提升安全性与可靠性

## [1.0.0] - 2022-06-20

### 新增 (Added)
- 首次发布
- 基础临时文件清理功能
- ⚠️ 注意：原始 v1.0.0 含破坏性操作，已归档至 `legacy/` 并禁用，仅供参考

---

[2.1.0]: #210-2026-08-07
[2.0.0]: #200-2024-05-06
[1.0.0]: #100-2022-06-20
