# Windows Cleaner Tools

A comprehensive batch script to clean temporary files, caches, and junk data from Windows XP, Vista, 7, 8, 10, and 11 systems.

## Features

### Core Cleanup Functions
- **Temporary Files**: Cleans user and system temp folders
- **System Cache**: Removes Windows Update cache, prefetch, and logs
- **Browser Cache**: Supports Internet Explorer, Chrome, Edge, and Firefox
- **Recycle Bin**: Empties recycle bin across all drives
- **Recent Files**: Clears recent files and thumbnail cache
- **Third-party Software**: Removes caches from popular applications

### Safety Features
- **Administrator Check**: Requires administrator privileges
- **Error Suppression**: Prevents error messages from interrupting cleanup
- **Conditional Execution**: Only processes folders that exist
- **Non-destructive**: Only removes safe, rebuildable data

### Compatibility
- Windows XP
- Windows Vista
- Windows 7
- Windows 8 / 8.1
- Windows 10
- Windows 11

## Usage

### Prerequisites
- Administrator privileges required
- Close all running applications for best results

### Running the Script

1. Right-click on `Windows_Cleaner_Enhanced.bat`
2. Select "Run as administrator"
3. Confirm the cleanup when prompted
4. Wait for cleanup to complete
5. Restart your computer if recommended

## Cleanup Sections

The script is organized into 6 main sections:

1. **Temporary Files** - User and system temp folders
2. **System Caches** - Windows Update, Prefetch, CBS logs
3. **Browser Caches** - IE, Chrome, Edge, Firefox
4. **Windows System** - Installer cache, performance logs
5. **Recycle Bin** - All drives
6. **Recent Files** - Thumbnails, icon cache

Plus optional third-party software cleanup

## Version History

- **v2.0.0** (2024-05-06)
  - Added administrator privilege check
  - Implemented modular section structure
  - Added error suppression for clean execution
  - Removed potentially dangerous operations
  - Added Windows version detection
  - Improved safety and reliability

- **v1.0.0** (2022-06-20)
  - Initial release

## Technical Details

- **Language**: Windows Batch Script
- **Encoding**: UTF-8 with BOM
- **Line Endings**: CRLF (Windows)
- **Requires**: cmd.exe, Administrator rights

## Safety Notes

- This script only removes safe, rebuildable data
- System-critical files are NOT touched
- No registry modifications
- No system settings changes
- Always backup important data before running

## Author

- **Author**: Sut
- **Contact**: xepinchan@qq.com

## License

This project is provided as-is for personal use.

## Contributing

Contributions are welcome! Please ensure:

1. Test on multiple Windows versions
2. Maintain backward compatibility
3. Keep safety as the top priority
4. Follow existing code style
