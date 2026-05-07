# Windows Cleaner Tools

<div align="center">

[![GitHub License](https://img.shields.io/github/license/username/windows-cleaner-tools?style=flat-square)](LICENSE)
[![Windows Version](https://img.shields.io/badge/Windows-XP%20%7C%20Vista%20%7C%207%20%7C%208%20%7C%2010%20%7C%2011-blue?style=flat-square&logo=windows)](https://www.microsoft.com/windows)
[![Release Version](https://img.shields.io/github/v/release/username/windows-cleaner-tools?style=flat-square)](https://github.com/username/windows-cleaner-tools/releases)
[![Last Commit](https://img.shields.io/github/last-commit/username/windows-cleaner-tools?style=flat-square)](https://github.com/username/windows-cleaner-tools/commits)

</div>

> **中文版**: [中文 README](README.md)

A comprehensive Windows system cleaning tool designed to clean temporary files, caches, and system junk data. Supports all major Windows versions from XP to 11.

## ✨ Features

### 🧹 Core Cleaning Functions

- **Temporary File Cleaning**: Cleans user and system temporary folders
- **System Cache Cleaning**: Removes Windows Update cache, prefetch files, and various logs
- **Browser Cache Cleaning**: Supports Internet Explorer, Chrome, Edge, and Firefox
- **Recycle Bin Emptying**: Empties the recycle bin across all drives
- **Recent Files Cleaning**: Clears recent files, thumbnail cache, and icon cache
- **Third-Party Software Cleaning**: Cleans caches and logs from popular applications

### 🛡️ Safety Features

- **Administrator Privilege Check**: Requires running as administrator
- **Error Suppression**: Prevents error messages from interrupting the cleaning process
- **Conditional Execution**: Only processes existing folders to avoid unnecessary operations
- **Non-Destructive Operations**: Only removes safe, rebuildable data
- **Windows Version Detection**: Automatically detects and adapts to the current system version

## 📋 System Requirements

- **Operating System**: Windows XP or later (32/64-bit)
- **Runtime Environment**: Windows Command Prompt (cmd.exe)
- **Required Permissions**: Administrator privileges

## 🚀 Quick Start

### Before You Begin

1. **Backup Important Data**: It's recommended to backup important files before running
2. **Close Applications**: For best results, close all running applications
3. **Get the Latest Version**: Download the latest version from the Releases page

### Running the Script

1. Right-click [`Windows_Cleaner_Enhanced.bat`](Windows_Cleaner_Enhanced.bat)
2. Select **"Run as administrator"**
3. After reading the safety warning, type `Y` to confirm cleaning
4. Wait for the cleaning process to complete
5. (Optional) Restart your computer to ensure all changes take effect

## 📁 Project Structure

```
windows-cleaner-tools/
├── README.md                      # Chinese documentation (default)
├── README_EN.md                   # English documentation
├── LICENSE                        # GNU General Public License v3.0
├── OPENSPEC.md                    # OpenSpec detailed specification document
├── Windows_Cleaner.bat            # Original version (v1.0.0)
├── Windows_Cleaner.bat.bak        # Original version backup
└── Windows_Cleaner_Enhanced.bat   # Enhanced version (v2.0.0) - Recommended
```

## 🧐 Detailed Cleaning Content

The script is divided into 6 main cleaning sections:

| No. | Cleaning Section | Description |
|-----|------------------|-------------|
| 1 | **Temporary Files** | User and system temp folders, prefetch folder |
| 2 | **System Cache** | Windows Update cache, install folders, CBS logs |
| 3 | **Browser Cache** | Cache data from IE, Chrome, Edge, Firefox |
| 4 | **Windows System** | Installer cache, performance logs, system trace files |
| 5 | **Recycle Bin** | Empty recycle bin on all drives |
| 6 | **Recent Files** | Thumbnail cache, icon cache, recent files list |

Plus optional third-party software cleaning:

- Thunder download cache
- Sogou Input Method logs and DMP files
- Tencent QQ cache

## 📜 Changelog

### v2.0.0 (2024-05-06) - Enhanced Version

- ✨ Added administrator privilege check mechanism
- 🛠️ Implemented modular code structure
- 🚫 Added error suppression to ensure cleaning process doesn't interrupt
- 🧹 Removed potentially dangerous system modification operations
- 🖥️ Added automatic Windows version detection
- 🔒 Significantly improved safety and reliability
- 📝 Fixed several known issues

### v1.0.0 (2022-06-20) - Initial Release

- 🎉 First release
- ✅ Basic temporary file cleaning functionality

## 📊 Technical Details

| Attribute | Value |
|-----------|-------|
| **Language** | Windows Batch Script |
| **Encoding** | UTF-8 with BOM |
| **Line Endings** | CRLF (Windows) |
| **Required Permissions** | Administrator |
| **Command-line Tool** | cmd.exe |

## ⚠️ Safety Notes

> **Important**: Please read the following safety information carefully

- ✅ This script only removes safe, rebuildable data
- ✅ System critical files are not touched
- ✅ No registry modifications
- ✅ No system settings changes
- ⚠️ Always backup important data before running
- ⚠️ Make sure to run as administrator
- ⚠️ Recommended to create a system restore point before running

## 🤝 Contributing

We welcome all forms of contribution! If you want to participate:

1. Fork this repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Create a Pull Request

Before submitting a PR, please ensure:

- ✅ Tested on multiple Windows versions
- ✅ Maintain backward compatibility
- ✅ Keep safety as the top priority
- ✅ Follow existing code style

## 👤 Author

**Sut**

- 📧 Email: xepinchan@qq.com
- 🌐 GitHub: [@username](https://github.com/username)

## 📄 License

This project is licensed under the **GNU General Public License v3.0** - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

Thanks to everyone who has contributed to this project!

---

<div align="center">

**If this project has been helpful to you, please give it a ⭐ Star!**

Made with ❤️ by Sut

</div>
