# Windows Cleaner Tools - OpenSpec Document

## 1. Project Overview

### Project Name
Windows Cleaner Tools

### Project Type
Windows Batch Script Utility

### Core Functionality
A comprehensive batch script solution for cleaning temporary files, caches, browser data, and system junk from Windows XP through Windows 11 systems.

### Target Users
- Windows system administrators
- Power users who want to maintain clean systems
- IT professionals managing multiple Windows installations

### Author Information
- **Author**: Sut
- **Contact**: xepinchan@qq.com

---

## 2. Functionality Specification

### 2.1 Core Features

#### 2.1.1 Administrator Privilege Check
- Validates administrator privileges before execution
- Displays clear error message if not running as administrator
- Prevents execution without proper permissions

#### 2.1.2 Windows Version Detection
- Automatic detection of Windows versions:
  - Windows XP (version 5.1)
  - Windows Vista (version 6.0)
  - Windows 7 (version 6.1)
  - Windows 8 (version 6.2)
  - Windows 8.1 (version 6.3)
  - Windows 10 (version 10.0)
  - Windows 11 (version 10.0.2xxx)
- Display detected version for user confirmation

#### 2.1.3 Temporary Files Cleanup
- User temp folder (%TEMP%)
- Windows system temp folder
- AppData temporary folders
- Prefetch folder (Windows systems)

#### 2.1.4 System Cache Cleanup
- Windows Update cache
- Windows Update download folder ($hf_mig$)
- Old Windows update folders ($NtUninstall*)
- Windows CBS temporary folder
- Windows logs directories

#### 2.1.5 Browser Cache Cleanup
- Internet Explorer cache (INetCache)
- Google Chrome cache and code cache
- Microsoft Edge cache
- Mozilla Firefox cache2 profiles

#### 2.1.6 Windows System Cleanup
- Windows installer cache (Config.Msi)
- Performance logs
- Resource cache
- Setup folders
- Servicing LCU folders
- Downloaded Program Files
- LiveKernelReports
- Tracing directories

#### 2.1.7 Recycle Bin Cleanup
- $Recycle.Bin on all drives (C through L)
- RECYCLER directories (legacy support)

#### 2.1.8 Recent Files and Thumbnails Cleanup
- Recent files folder
- Thumbnail cache database
- Icon cache database

#### 2.1.9 Third-party Software Cleanup
- Thunder download cache
- ThunderX cache and GPU cache
- Sogou Input Method logs and dump files
- Tencent/QQ cache

### 2.2 Safety Features

#### 2.2.1 Conditional Execution
- All cleanup operations check for folder existence before processing
- Prevents errors from non-existent paths
- Error suppression for clean execution

#### 2.2.2 Non-destructive Operations
- Only removes safe, rebuildable data
- No system-critical files are touched
- No registry modifications
- No system settings changes

#### 2.2.3 User Confirmation
- Prompts user for confirmation before cleanup
- Allows user to abort the operation

### 2.3 User Interface

#### 2.3.1 Banner Display
- Shows program title, version, author, and build date
- Professional ASCII-art style banner
- Color-coded output for better readability

#### 2.3.2 Progress Indication
- Section-based progress display (e.g., [1/6], [2/6])
- Clear section labels for each cleanup phase

#### 2.3.3 Completion Summary
- Displays success message upon completion
- Provides restart recommendation if needed

---

## 3. Technical Specification

### 3.1 File Structure

```
/workspace/
├── README.md                    # English documentation
├── README_CN.md                 # Chinese documentation
├── LICENSE                      # Project license
├── Windows_Cleaner.bat         # Legacy version (v1.0.0)
├── Windows_Cleaner.bat.bak     # Backup of legacy version
└── Windows_Cleaner_Enhanced.bat # Enhanced version (v2.0.0)
```

### 3.2 Version History

#### Version 2.0.0 (2024-05-06)
- Added administrator privilege check
- Implemented modular section structure
- Added error suppression for clean execution
- Removed potentially dangerous operations
- Added Windows version detection
- Improved safety and reliability

#### Version 1.0.0 (2022-06-20)
- Initial release
- Basic cleanup functionality

### 3.3 Supported Windows Versions
- Windows XP
- Windows Vista
- Windows 7
- Windows 8 / 8.1
- Windows 10
- Windows 11

### 3.4 Encoding and Format
- **Language**: Windows Batch Script
- **Encoding**: UTF-8 with BOM
- **Line Endings**: CRLF (Windows)
- **Required**: cmd.exe, Administrator rights

---

## 4. Acceptance Criteria

### 4.1 Functional Criteria

| ID | Criterion | Status |
|----|-----------|--------|
| AC1 | Script requires administrator privileges | ✓ |
| AC2 | Script correctly detects Windows version | ✓ |
| AC3 | All cleanup sections execute without errors | ✓ |
| AC4 | User confirmation is requested before cleanup | ✓ |
| AC5 | Error suppression prevents script interruption | ✓ |
| AC6 | Folder existence is checked before processing | ✓ |

### 4.2 Code Quality Criteria

| ID | Criterion | Status |
|----|-----------|--------|
| CQ1 | No duplicate folder operations in loops | ✓ |
| CQ2 | No syntax errors (typos in commands) | ✓ |
| CQ3 | No dangerous system modifications | ✓ |
| CQ4 | Consistent error redirection (>NUL 2>&1) | ✓ |
| CQ5 | Proper variable usage (%VAR% syntax) | ✓ |

### 4.3 Safety Criteria

| ID | Criterion | Status |
|----|-----------|--------|
| SF1 | No registry modifications | ✓ |
| SF2 | No system-critical file deletions | ✓ |
| SF3 | No system settings changes | ✓ |
| SF4 | Only safe, rebuildable data is removed | ✓ |

---

## 5. Issues Fixed

### Version 2.0.0 Issues

1. **Windows 11 Detection**: Added VER | FINDSTR /B /I "10.0.2" for Windows 11 detection
2. **Duplicate Loop**: Removed duplicate `FOR %%i IN (rescache rescache)` loop
3. **Typo Fix**: Corrected `>NUIL` to `>NUL` in RD command
4. **Variable Syntax**: Removed dangerous `SET %TEMP% and %TMP% "d:\temp" "d:\temp"`
5. **Duplicate Switch**: Fixed `RD /Q /Q` to `RD /Q /S`

---

## 6. Usage Instructions

### 6.1 Prerequisites
- Administrator privileges required
- Close all running applications for best results

### 6.2 Running the Script

1. Right-click on `Windows_Cleaner_Enhanced.bat`
2. Select "Run as administrator"
3. Confirm the cleanup when prompted
4. Wait for cleanup to complete
5. Restart your computer if recommended

### 6.3 Recommended Version
For Windows XP through Windows 11, use **Windows_Cleaner_Enhanced.bat** (v2.0.0) as it includes improved safety features and error handling.

---

## 7. License

This project is provided as-is for personal use.

---

## 8. Contributing

Contributions are welcome. Please ensure:
1. Test on multiple Windows versions
2. Maintain backward compatibility
3. Keep safety as the top priority
4. Follow existing code style
