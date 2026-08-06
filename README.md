# Windows 清理工具

<div align="center">

[![GitHub License](https://img.shields.io/github/license/username/windows-cleaner-tools?style=flat-square)](LICENSE)
[![Windows Version](https://img.shields.io/badge/Windows-XP%20%7C%20Vista%20%7C%207%20%7C%208%20%7C%2010%20%7C%2011-blue?style=flat-square&logo=windows)](https://www.microsoft.com/windows)
[![Release Version](https://img.shields.io/github/v/release/username/windows-cleaner-tools?style=flat-square)](https://github.com/username/windows-cleaner-tools/releases)
[![Last Commit](https://img.shields.io/github/last-commit/username/windows-cleaner-tools?style=flat-square)](https://github.com/username/windows-cleaner-tools/commits)

</div>

> **English Version**: [English README](README_EN.md)

一个全面的 Windows 系统清理工具，专门用于清理临时文件、缓存和系统垃圾数据。支持从 Windows XP 到 Windows 11 的所有主流 Windows 版本。

## ✨ 特性

### 🧹 核心清理功能

- **临时文件清理**：清理用户和系统临时文件夹
- **系统缓存清理**：删除 Windows 更新缓存、预读取文件和各类日志
- **浏览器缓存清理**：支持 Internet Explorer、Chrome、Edge 和 Firefox
- **回收站清空**：清空所有驱动器的回收站
- **最近文件清理**：清除最近文件和缩略图、图标缓存
- **第三方软件清理**：清理热门应用程序的缓存和日志

### 🖥️ 图形界面 (GUI)

- **零依赖**：基于 PowerShell + WinForms，系统自带无需安装运行时
- **分项勾选**：标准清理项 + 高级项（默认不勾、危险项标红）
- **实时反馈**：进度条 + 实时日志输出，后台运行不卡顿
- **权限自检**：自动检测管理员权限，一键「以管理员重启」
- **二次确认**：开始清理前列出待清理项，危险项显式警示

### 🛡️ 安全特性

- **管理员权限检查**：强制要求以管理员身份运行
- **错误抑制机制**：防止错误消息中断清理过程
- **条件执行**：仅处理存在的文件夹，避免不必要的操作
- **非破坏性操作**：仅删除安全的、可重建的数据
- **Windows 版本检测**：自动检测并适配当前系统版本

## 📋 系统要求

- **操作系统**：Windows XP 或更高版本 (32/64位)
- **命令行版**：Windows Command Prompt (cmd.exe)，需管理员权限
- **图形界面版**：PowerShell 5.1+（系统自带），部分高级清理项需管理员权限
- **依赖**：零依赖，无需安装额外运行时

## 🚀 快速开始

### 运行脚本（命令行版）

1. 右键点击 [`Windows_Cleaner_Enhanced.bat`](Windows_Cleaner_Enhanced.bat)，选择 **"以管理员身份运行"**
2. 阅读安全提示后，输入 `Y` 确认清理
3. 等待完成（可选重启以生效）

运行脚本（GUI 版）：双击 [`启动清理工具.bat`](启动清理工具.bat) 即可。

## 📁 项目结构

```
windows-cleaner-tools/
├── README.md                      # 中文文档（默认）
├── README_EN.md                   # English documentation
├── LICENSE                        # GNU General Public License v3.0
├── OPENSPEC.md                    # OpenSpec 详细规范文档
├── legacy/Windows_Cleaner.bat    # 原始版本 (v1.0.0，已归档，不推荐使用)
├── Windows_Cleaner_Enhanced.bat   # 增强版本 (v2.1.0) - 命令行, 推荐使用
├── Windows_Cleaner_GUI.ps1        # 图形界面版 (PowerShell + WinForms, 零依赖)
└── 启动清理工具.bat               # GUI 启动器 (隐藏 PowerShell 窗口)
```

## 🧐 清理内容详解

脚本分为 6 个主要清理部分：

| 序号 | 清理部分 | 说明 |
|------|----------|------|
| 1 | **临时文件** | 用户和系统临时文件夹、预读取文件夹 |
| 2 | **系统缓存** | Windows 更新缓存、安装文件夹、CBS 日志 |
| 3 | **浏览器缓存** | IE、Chrome、Edge、Firefox 的缓存数据 |
| 4 | **Windows 系统** | 安装程序缓存、性能日志、系统跟踪文件 |
| 5 | **回收站** | 所有驱动器的回收站清空 |
| 6 | **最近文件** | 缩略图缓存、图标缓存、最近文件列表 |

以及可选的第三方软件清理：

- 迅雷下载缓存
- 搜狗输入法日志和 DMP 文件
- 腾讯 QQ 缓存

## 📜 版本历史

完整变更记录见 [CHANGELOG.md](CHANGELOG.md)（遵循 Keep a Changelog 规范）。

当前版本：**v2.1.0**（2026-08-07，新增零依赖图形界面与启动器）。

## 📊 技术细节

| 属性 | 值 |
|------|-----|
| **语言** | Windows Batch Script (CLI) / PowerShell 5.1+ WinForms (GUI) |
| **编码** | UTF-8 with BOM |
| **行尾符** | CRLF (Windows) |
| **所需权限** | 管理员（CLI 版必需；GUI 版部分项需管理员） |
| **命令行工具** | cmd.exe / powershell.exe |

## 🖥️ 图形界面 (GUI)

`Windows_Cleaner_GUI.ps1` 是基于 PowerShell + WinForms 的零依赖图形界面，支持分项勾选、实时进度与日志、管理员自检。

**运行方式**（推荐双击启动器，不会弹出 PowerShell 控制台窗口）：

1. 双击 `启动清理工具.bat` —— 以隐藏窗口方式启动 GUI
2. 或在 PowerShell 中执行：`.\Windows_Cleaner_GUI.ps1`

> 若直接双击 `.ps1` 文件，系统会用 `powershell.exe` 打开并弹出蓝色控制台窗口；使用 `启动清理工具.bat` 可避免此问题。GUI 内部「以管理员重启」也会以隐藏窗口方式重新运行。

| 属性 | 值 |
|------|-----|
| **语言** | PowerShell 5.1+ / .NET WinForms |
| **依赖** | 系统自带, 零依赖 |
| **编码** | UTF-8 with BOM |
| **所需权限** | 部分项需管理员 |

## ⚠️ 安全说明

> **重要提示**：请仔细阅读以下安全信息

- ✅ 增强版与 GUI 仅删除安全的、可重建的数据（临时文件/缓存/日志）
- ✅ 不会触及系统关键文件（IME/Cursors/Help/rescache 等破坏性项已从 GUI 移除）
- ✅ 无注册表修改、无系统设置更改
- ⚠️ GUI 含可选「高级项」，默认不勾选且标红，需二次确认后方可执行
- ⚠️ `legacy/` 目录为原始危险脚本，已禁用且注释化，仅供历史参考，切勿运行
- ⚠️ 运行前请务必备份重要数据
- ⚠️ 请确保以管理员身份运行
- ⚠️ 建议在运行前创建系统还原点

## 🤝 参与贡献

我们欢迎任何形式的贡献！如果您想参与，请：

1. Fork 这个仓库
2. 创建您的特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交您的更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 创建一个 Pull Request

在提交 PR 前，请确保：

- ✅ 在多个 Windows 版本上测试
- ✅ 保持向后兼容性
- ✅ 将安全作为首要考虑因素
- ✅ 遵循现有代码风格

## 👤 作者

**Sut**

- 📧 Email: xepinchan@qq.com
- 🌐 GitHub: [@username](https://github.com/username)

## 📄 许可证

本项目采用 **GNU General Public License v3.0** 许可证 - 请参阅 [LICENSE](LICENSE) 文件了解详情。

## 🙏 致谢

感谢所有为这个项目做出贡献的人！

---

<div align="center">

**如果这个项目对您有帮助，请给它一个 ⭐ Star！**

Made with ❤️ by Sut

</div>
