@ECHO	off
REM 设置环境变量
SET build=20210110
SET author=Sut
SET title=Windows Cleaner Tools/Windows 清理工具


title %title% by %author% Ver:%build%

COLOR 2F
ECHO	┏						┓
ECHO		【 %title% 】
ECHO.
ECHO		Author  : %author%
ECHO		Contact : xepinchan@qq.com
ECHO		Building: %build%
ECHO	┗						┛

ECHO.	支持 Windows XP / Windows 7 / Windows 8
ECHO.
ECHO.	我的 Windows 版本是
VER

ECHO.
ECHO.	现在开始清理优化 Windows，
ECHO.	建议您退出所有正在运行的软件，
ECHO.	以达到最好的清理效果！
ECHO.	请按右键“以管理员身份运行”本程序！！！   
ECHO.

PAUSE
COLOR 1E
ECHO.
ECHO	设置系统临时文件夹位置
SET %TEMP% and %TMP% "d:\temp" "d:\temp"

ECHO	清理临时文件夹的垃圾
DEL "%TEMP%\*.*"  /S  /Q
DEL "%TMP%\*.*"  /S  /Q
RD "%TEMP%"  /S  /Q
MD "%TEMP%"

DEL "%APPDATA%\Temp\*.*"  /S  /Q
RD  "%APPDATA%\Temp"  /S  /Q

RD  c:\Config.Msi  /Q  /S
RD  d:\Config.Msi  /Q  /S
RD  e:\Config.Msi  /Q  /S
RD  f:\Config.Msi  /Q  /S
RD  G:\Config.Msi  /Q  /S

RD  C:\PerfLogs  /Q  /S
RD  C:\Recovery  /Q  /S

ECHO.
ECHO	清理 Windows 目录下的无用文件和文件夹
DEL "%WINDIR%\*.ico" /f
DEL "%WINDIR%\*.log"  /S
DEL "%WINDIR%\*.tmp" /f
DEL "%WINDIR%\clock.avi"
DEL "%WINDIR%\dragon.exe" /f
DEL "%WINDIR%\IRIMG1.BMP" /f
DEL "%WINDIR%\system32\*.tmp"
DEL "%WINDIR%\SysWOW64\oem7F7.exe" /f
DEL "%WINDIR%\SysWOW64\service.exe" /f
DEL "%WINDIR%\SysWOW64\Win7网银补丁.exe" /f
DEL "%WINDIR%\SysWOW64\Win7网银补丁.exe" /f
DEL "%WINDIR%\SysWOW64\资料转移工具.exe" /f
DEL "%WINDIR%\SysWOW64\驱动精灵.exe" /f
DEL "%WINDIR%\Tasks\SCHEDLGU.TXT" /f
RD  "%WINDIR%\Downloaded Program Files"  /S  /Q
RD  "%WINDIR%\LiveKernelReports"  /S  /Q
RD  "%WINDIR%\log"  /S  /Q
RD  "%WINDIR%\Logs"  /S  /Q
RD  "%WINDIR%\ModemLogs"  /S  /Q
RD  "%WINDIR%\msdownld.tmp"  /S  /Q
RD  "%WINDIR%\Offline Web Pages"  /S  /Q
RD  "%WINDIR%\Performance"  /S  /Q
RD  "%WINDIR%\rescache"  /S  /Q
RD  "%WINDIR%\SchCache"  /S  /Q
RD  "%WINDIR%\servicing\LCU"  /S  /Q
RD  "%WINDIR%\Setup"  /S  /Q
RD  "%WINDIR%\temp"  /S  /Q
RD  "%WINDIR%\tracing"  /S  /Q
RD  "%WINDIR%\winsxs\Backup"  /S  /Q
RD  "%WINDIR%\winsxs_del"  /S  /Q

ECHO 删除补丁备份目录
RD  %windir%\SoftwareDistribution\Download  /Q  /S
RD  %windir%\$hf_mig$  /Q  /S
RD  %SYSTEMDRIVE%\PerfLog  /Q  /S
dir %windir%\$NtUninstall* /a:d /b >%windir%\update.txt
for /f %%i in (%windir%\update.txt) do RD  %windir%\%%i  /S  /Q
DEL %windir%\update.txt /f  /Q
RD  "%SYSTEMDRIVE%\SWTOOLS"  /Q  /S

REM 无用文件夹清理
DEL "%LOCALAPPDATA%\Microsoft\Windows\Cache\*.*"  /Q  /S
DEL "%LOCALAPPDATA%\Microsoft\Windows\Explorer\*.*"  /Q  /S
DEL "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Caches\*.*"  /Q
DEL "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Explorer\*.*"  /Q
DEL "%SYSTEMDRIVE%\Users\Public\Music\Sample Music\*.*"  /Q
DEL "%SYSTEMDRIVE%\Users\Public\Pictures\Sample Pictures\*.*"  /Q
DEL "%SYSTEMDRIVE%\Users\Public\Videos\Sample Videos\*.*"  /Q
DEL "%windir%\Web\Wallpaper\*.jpg"  /Q  /S
DEL "%windir%\Web\Wallpaper\Landscapes\*.jpg"  /Q  /S
RD  "%APPDATA%\dg\"   /Q  /S
RD  "%APPDATA%\Foxit Software\"   /Q  /S
RD  "%APPDATA%\HD Tune Pro\"   /Q  /S
RD  "%APPDATA%\Kunlun\"   /Q  /S
RD  "%APPDATA%\KunlunInput\"   /Q  /S
RD  "%APPDATA%\Macromedia\"   /Q  /S
RD  "%APPDATA%\Macromedia\"   /Q  /S
RD  "%APPDATA%\Macromedia\"   /Q  /S
RD  "%LOCALAPPDATA%\ElevatedDiagnostics"  /Q  /S
RD  "%LOCALAPPDATA%\Microsoft\Feeds Cache\"  /Q  /S
RD  "%LOCALAPPDATA%\Temp"  /Q  /S
RD  "%LOCALAPPDATA%Low\Thunder Network"  /Q  /S
RD  "%APPDATA%\360Safe"  /Q  /S
RD  "%APPDATA%\360se"  /Q  /S
RD  "%APPDATA%\AiQiSoft"  /Q  /S
RD  "%APPDATA%\AliWorkbench\Update"  /Q  /S
RD  "%APPDATA%\FlashFXP"  /Q  /S
RD  "%APPDATA%\FreeFileSync\Logs"  /Q  /S
RD  "%APPDATA%\LDSGameCenter"  /Q  /S
RD  "%APPDATA%\NVIDIA"  /Q  /S
RD  "%APPDATA%\PPStream"  /Q  /S
RD  "%APPDATA%\Tencent"  /Q  /S
RD  "%APPDATA%\thunderx\Cache"  /Q  /S
RD  "%APPDATA%\thunderx\GPUCache"  /Q  /S
RD  "%APPDATA%\youku"  /Q  /S
RD  "%HOMEPATH%AppData\Local\Microsoft\Windows\Burn\"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Local\Temp"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\360Safe"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\360se"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\FlashFXP"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\KuGou8"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\PPStream"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\Tencent"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\Thunder Network"  /Q  /S

REM Win8 无用文件清理
RD  "%APPDATA%\Microsoft\Windows\Temporary Internet Files\"  /S  /Q
RD  "%APPDATA%\Microsoft\Windows\WebCache\"  /S  /Q
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Temporary Internet Files\"  /S  /Q
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\WebCache\"  /S  /Q
RD  "%windir%\CbsTemp"  /S  /Q


ECHO.
ECHO	清空回收站
RD  %SYSTEMDRIVE%\RECYCLER\*  /Q  /S
RD  c:\$Recycle.Bin\  /Q  /S
RD  c:\RECYCLER\  /Q  /S
RD  d:\$Recycle.Bin\  /Q  /S
RD  d:\RECYCLER\  /Q  /S
RD  e:\$Recycle.Bin\  /Q  /S
RD  e:\RECYCLER\  /Q  /S
RD  f:\$Recycle.Bin\  /Q  /S
RD  f:\RECYCLER\  /Q  /S
RD  g:\$Recycle.Bin\  /Q  /S
RD  g:\RECYCLER\  /Q  /S

ECHO.
ECHO	清除 Cookies
DEL "%appdata%\Microsoft\Windows\Cookies\*.*" /f  /S  /Q

ECHO.
ECHO	开始菜单
DEL "%ALLUSERSPROFILE%\「开始」菜单\Windows Catalog.lnk"
DEL "%ALLUSERSPROFILE%\「开始」菜单\Windows Update.lnk"
DEL "%ALLUSERSPROFILE%\「开始」菜单\设定程序访问和默认值.lnk"
DEL "E:\admin\「开始」菜单\程序\Outlook Express.lnk"
DEL "E:\admin\「开始」菜单\程序\Windows Media Player.lnk"

ECHO.
ECHO	移动开始菜单的一些快捷方式
DEL "%USERPROFILE%\「开始」菜单\程序\漫游 Windows XP.lnk"

move "%ALLUSERSPROFILE%\「开始」菜单\程序\Windows Movie Maker.lnk" "%ALLUSERSPROFILE%\「开始」菜单\程序\附件\娱乐\Windows Movie Maker.lnk"
move "%ALLUSERSPROFILE%\「开始」菜单\程序\远程协助.lnk" "%ALLUSERSPROFILE%\「开始」菜单\程序\附件\远程协助.lnk"
move "%SYSTEMDRIVE%\Documents and Settings\Administrator\「开始」菜单\程序\远程协助.lnk" "%SYSTEMDRIVE%\「开始」菜单\程序\附件\远程协助.lnk"
move "%SYSTEMDRIVE%\Documents and Settings\Default User\「开始」菜单\程序\远程协助.lnk" "%SYSTEMDRIVE%\Documents and Settings\Default User\「开始」菜单\程序\附件\远程协助.lnk"
move "%USERPROFILE%\「开始」菜单\程序\Windows Movie Maker.lnk" "%USERPROFILE%\「开始」菜单\程序\附件\娱乐\Windows Movie Maker.lnk"
move "%USERPROFILE%\「开始」菜单\程序\远程协助.lnk" "%USERPROFILE%\「开始」菜单\程序\附件\远程协助.lnk" /y
move "E:\admin\「开始」菜单\程序\远程协助.lnk" "E:\admin\「开始」菜单\程序\附件\远程协助.lnk"


ECHO.
ECHO	复制音量控制快捷方式到快速启动栏
xcopy "%ALLUSERSPROFILE%\「开始」菜单\程序\附件\娱乐\音量控制.lnk" "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\" /y

ECHO.
ECHO	清理XP自带的墙纸
DEL "%WINDIR%\web\Wallpaper\*.jpg"
DEL "%WINDIR%\web\Wallpaper\Bliss.bmp"
DEL "%WINDIR%\web\Wallpaper\Windows\auney.jpg"

ECHO	清理备份OEM LOGO
DEL  "%WINDIR%\system32\oemlogo_bak.bmp"

ECHO.
ECHO	清理 MaxDOS 自带浏览器插件
DEL "%WINDIR%\system32\BBN_iCafe_071210.dll"
DEL "D:\MaxDOS\bd.exe"
net stop knlrun
sc config knlrun start= Disabled

ECHO.
ECHO	清理 搜狗输入法 无用文件
RD  "%ProgramFiles%\SogouExtension\"  /Q  /S
DEL "%ProgramFiles%\SogouInput\*.url"  /S
RD  "%ALLUSERSPROFILE%\「开始」菜单\程序\搜狗拼音输入法\链接"  /S  /Q
DEL "%ALLUSERSPROFILE%\「开始」菜单\程序\搜狗拼音输入法\帮助.lnk"
DEL "%ALLUSERSPROFILE%\「开始」菜单\程序\搜狗拼音输入法\打字入门.lnk"
DEL "%ALLUSERSPROFILE%\「开始」菜单\程序\搜狗拼音输入法\官方论坛.lnk"
DEL "%ALLUSERSPROFILE%\「开始」菜单\程序\搜狗拼音输入法\官方网站.lnk"
DEL "%ALLUSERSPROFILE%\「开始」菜单\程序\搜狗拼音输入法\皮肤下载.lnk"
DEL "%ALLUSERSPROFILE%\「开始」菜单\程序\搜狗拼音输入法\细胞词库.lnk"
DEL "%ALLUSERSPROFILE%\「开始」菜单\程序\搜狗拼音输入法\意见反馈.lnk"
DEL "%ProgramFiles%\SogouInput\*.log"  /S
DEL "%ProgramFiles%\SogouInput\*.url"  /S
DEL "%ProgramFiles%\SogouInput\*.dmp"  /S
DEL "%ProgramFiles%\SogouInput\errorlog.txt"  /S
DEL "%ProgramFiles%\SogouInput\OlympicNews.exe"  /S
DEL "%ProgramFiles%\SogouInput\SohuNews.exe"  /S /F
DEL "E:\Program Files (x86)\SogouInput\SohuNews.exe"  /S /F
DEL "E:\Program Files (x86)\SogouInput\*.url"  /S /F
DEL "%ProgramFiles%\SogouInput\SogouFlash.exe"  /S
DEL "%ProgramFiles%\SogouInput\SkinReg.exe"  /S
DEL "%ProgramFiles%\SogouInput\userNetSchedule.exe"  /S
DEL "%ProgramFiles%\SogouInput\PinyinUp.exe"  /S
DEL "%ProgramFiles%\SogouInput\crashrpt.exe"  /S
DEL "%ProgramFiles%\SogouInput\SkinRecommend.ini"  /S
DEL "%ProgramFiles%\SogouInput\FlashSkinPreview.ini"  /S
DEL "%ProgramFiles%\SogouInput\SogouCloud.exe"  /S
DEL "%ProgramFiles%\SogouInput\urlBaseG.enc"  /S
DEL "%ProgramFiles%\SogouInput\urlguide.enc"  /S
DEL "%ProgramFiles%\SogouInput\sogoupy.zip"  /S

DEL "%ProgramFiles% (x86)\SogouInput\*.log"  /S
DEL "%ProgramFiles% (x86)\SogouInput\*.url"  /S
DEL "%ProgramFiles% (x86)\SogouInput\*.dmp"  /S
DEL "%ProgramFiles% (x86)\SogouInput\errorlog.txt"  /S
DEL "%ProgramFiles% (x86)\SogouInput\OlympicNews.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SohuNews.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SogouFlash.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SkinReg.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\userNetSchedule.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\PinyinUp.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\crashrpt.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SkinRecommend.ini"  /S
DEL "%ProgramFiles% (x86)\SogouInput\FlashSkinPreview.ini"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SogouCloud.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\urlBaseG.enc"  /S
DEL "%ProgramFiles% (x86)\SogouInput\urlguide.enc"  /S  /Q
DEL "%ProgramFiles% (x86)\SogouInput\sogoupy.zip"  /S


ECHO	清理 搜狗输入法 无用文件
DEL "%ProgramFiles% (x86)\SogouWBInput\*.url"  /S
RD  "%ProgramFiles% (x86)\SogouWBInput\*\ErrorLog\"  /Q  /S

RD  "%ProgramFiles% (x86)\Tools\"  /Q  /S

ECHO	删除他国语言空文件夹
RD  "%WINDIR%\system32\1025"
RD  "%WINDIR%\system32\1028"
RD  "%WINDIR%\system32\1031"
RD  "%WINDIR%\system32\1037"
RD  "%WINDIR%\system32\1041"
RD  "%WINDIR%\system32\1042"
RD  "%WINDIR%\system32\1054"
RD  "%WINDIR%\system32\3076"

ECHO	删除 boot 他国语言
RD  "%SYSTEMDRIVE%\boot\cs-CZ"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\da-DK"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\de-DE"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\el-GR"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\es-ES"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\fi-FI"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\hu-HU"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\it-IT"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\ja-JP"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\ko-KR"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\nb-NO"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\nl-NL"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\pl-PL"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\pt-BR"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\pt-PT"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\ru-RU"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\sv-SE"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\tr-TR"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\zh-HK"  /Q  /S
RD  "%SYSTEMDRIVE%\boot\zh-TW"  /Q  /S

DEL "%SYSTEMDRIVE%\Boot\Fonts\jpn_boot.ttf"
DEL "%SYSTEMDRIVE%\Boot\Fonts\kor_boot.ttf"
DEL "%SYSTEMDRIVE%\Boot\Fonts\cht_boot.ttf"



ECHO.
ECHO	清理多余屏幕保护程序
DEL "%WINDIR%\system32\dllcache\scrnsave.scr"  /Q /f
DEL "%WINDIR%\system32\dllcache\ss3dfo.scr"  /Q /f
DEL "%WINDIR%\system32\dllcache\ssbezier.scr"  /Q /f
DEL "%WINDIR%\system32\dllcache\ssflwbox.scr"  /Q /f
DEL "%WINDIR%\system32\dllcache\ssmarque.scr"  /Q /f
DEL "%WINDIR%\system32\dllcache\ssmyst.scr"  /Q /f
DEL "%WINDIR%\system32\dllcache\sspipes.scr"  /Q /f
DEL "%WINDIR%\system32\dllcache\ssstars.scr"  /Q /f
DEL "%WINDIR%\system32\dllcache\sstext3d.scr"  /Q /f
DEL "%WINDIR%\system32\scrnsave.scr"  /Q /f
DEL "%WINDIR%\system32\ss3dfo.scr"  /Q /f
DEL "%WINDIR%\system32\ssbezier.scr"  /Q /f
DEL "%WINDIR%\system32\ssflwbox.scr"  /Q /f
DEL "%WINDIR%\system32\ssmarque.scr"  /Q /f
DEL "%WINDIR%\system32\ssmyst.scr"  /Q /f
DEL "%WINDIR%\system32\sspipes.scr"  /Q /f
DEL "%WINDIR%\system32\ssstars.scr"  /Q /f
DEL "%WINDIR%\system32\sstext3d.scr"  /Q /f

ECHO	删除自动更新程序
DEL "%WINDIR%\system32\wuauclt.exe"
DEL "%WINDIR%\system32\wuauclt1.exe"
DEL "%WINDIR%\system32\dllcache\wuauclt.exe"
DEL "%WINDIR%\system32\dllcache\wuauclt1.exe"

ECHO.
ECHO	清理多余帮助
rename "%WINDIR%\Help\agt0804.hlp" agt0804_.hlp
DEL "%WINDIR%\Help\agt*.hlp"
rename "%WINDIR%\Help\agt0804_.hlp" agt0804.hlp

ECHO.
ECHO	清理多余输入法  繁体中文输入法
RD  "%WINDIR%\ime\CHTIME"  /Q  /S
DEL "%WINDIR%\system32\dllcache\hwxcht.dll"

ECHO	IMJP8_1 日文输入法
DEL "%WINDIR%\system32\dllcache\cplexe.exe"
DEL "%WINDIR%\system32\dllcache\imjpcic.dll"
DEL "%WINDIR%\system32\dllcache\imjpcus.dll"
DEL "%WINDIR%\system32\dllcache\imjpdadm.exe"
DEL "%WINDIR%\system32\dllcache\imjpdct.dll"
DEL "%WINDIR%\system32\dllcache\imjpdct.exe"
DEL "%WINDIR%\system32\dllcache\imjpdsvr.exe"
DEL "%WINDIR%\system32\dllcache\imjpinst.exe"
DEL "%WINDIR%\system32\dllcache\imjpmig.exe"
DEL "%WINDIR%\system32\dllcache\imjprw.exe"
DEL "%WINDIR%\system32\dllcache\imjpuex.exe"
DEL "%WINDIR%\system32\dllcache\imjputy.exe"
DEL "%WINDIR%\system32\dllcache\imjputyc.dll"
RD  "%WINDIR%\ime\IMJP8_1"  /Q  /S 

ECHO	IMJP8_1\APPLETS
DEL "%WINDIR%\system32\dllcache\hwxjpn.dll"
DEL "%WINDIR%\system32\dllcache\imskdic.dll"
DEL "%WINDIR%\system32\dllcache\imskf.dll"
DEL "%WINDIR%\system32\dllcache\multibox.dll"
DEL "%WINDIR%\system32\dllcache\softkey.dll"
DEL "%WINDIR%\system32\dllcache\voicepad.dll"
DEL "%WINDIR%\system32\dllcache\voicesub.dll"

ECHO	IMKR6_1
RD  "%WINDIR%\ime\IMKR6_1"  /Q  /S 
DEL "%WINDIR%\system32\dllcache\imekrmig.exe"
DEL "%WINDIR%\system32\dllcache\imkrinst.exe"
DEL "%WINDIR%\system32\dllcache\imekrcic.dll"

ECHO	IMKR6_1\Applets
DEL "%WINDIR%\system32\dllcache\hwxkor.dll"
DEL "%WINDIR%\system32\dllcache\imekrmbx.dll"

ECHO	IMKR6_1\Dicts
DEL "%WINDIR%\system32\dllcache\hanjadic.dll"
DEL "%WINDIR%\system32\dllcache\hanja.lex"
DEL "%WINDIR%\system32\dllcache\imekr.lex"

ECHO Win7 IME
RD  "%WINDIR%\IME\IMEJP10"  /S  /Q
RD  "%WINDIR%\IME\IMETC10"  /S  /Q



ECHO 显卡相关文件
DEL "%WINDIR%\system32\igfxr*.lrc"  /Q
DEL "%WINDIR%\system32\drivers\igfxr*.lrc"  /Q  /S

ECHO.
ECHO	清理系统补丁备份
RD  %WINDIR%\$hf_mig$  /Q  /Q

ECHO	清理 Prefetch 文件夹
DEL "%WINDIR%\Prefetch\*.*"  /Q /f


ECHO	清理 Windows7 启动项
DEL "%USERPROFILE%\Start Menu\*.com*"  /Q  /S
DEL "%USERPROFILE%\「开始」菜单\*.com*"  /Q  /S



ECHO 多余的声卡应用程序
DEL "%WINDIR%\ALCMTR.EXE" /f
DEL "%WINDIR%\ALCWZRD.EXE" /f
DEL "%WINDIR%\RtlUpd.exe" /f
DEL "%WINDIR%\SkyTel.exe" /f
DEL "%WINDIR%\SOUNDMAN.EXE" /f

ECHO	清理 Windows 自带 BMP 墙纸
DEL "%WINDIR%\Blue Lace 16.bmp"
DEL "%WINDIR%\Coffee Bean.bmp"
DEL "%WINDIR%\FeatherTexture.bmp"
DEL "%WINDIR%\Gone Fishing.bmp"
DEL "%WINDIR%\Greenstone.bmp"
DEL "%WINDIR%\Prairie Wind.bmp"
DEL "%WINDIR%\Rhododendron.bmp"
DEL "%WINDIR%\River Sumida.bmp"
DEL "%WINDIR%\Santa Fe Stucco.bmp"
DEL "%WINDIR%\Soap Bubbles.bmp"
DEL "%WINDIR%\Zapotec.bmp"

ECHO.
ECHO	清理快速启动栏图标
DEL "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\Windows Media Player.lnk"
DEL "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\因特网搜索.lnk"

ECHO.
ECHO	清理IE收藏夹原始条目
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\MSN.com.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\电台指南.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\链接\Windows Media.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\链接\windows.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\链接\免费 Hotmail.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\链接\自定义链接.url"
DEL "%USERPROFILE%\Favorites\MSN.com.url"
DEL "%USERPROFILE%\Favorites\电台指南.url"
DEL "%USERPROFILE%\Favorites\链接\Windows Media.url"
DEL "%USERPROFILE%\Favorites\链接\windows.url"
DEL "%USERPROFILE%\Favorites\链接\免费 Hotmail.url"
DEL "%USERPROFILE%\Favorites\链接\自定义链接.url"

DEL "%USERPROFILE%\Local Settings\Temp\*.*"  /Q  /S
DEL "%USERPROFILE%\Local Settings\History\*"  /Q  /S
DEL "%USERPROFILE%\Recent\*.lnk"  /Q
DEL "%APPDATA%\Roaming\Microsoft\Windows\Recent\*.lnk"  /Q

ECHO	清理WIN7 IE收藏夹原始条目
RD  "%USERPROFILE%\Favorites\Microsoft 网站"  /Q  /S
RD  "%USERPROFILE%\Favorites\MSN 网站"  /Q  /S
RD  "%USERPROFILE%\Favorites\Windows Live"  /Q  /S
RD  "E%USERPROFILE%\Favorites\Links for 中国"  /Q  /S
RD  "E:\admin\Favorites\Microsoft 网站"  /Q  /S
RD  "E:\admin\Favorites\MSN 网站"  /Q  /S
RD  "E:\admin\Favorites\Windows Live"  /Q  /S
RD  "E:\admin\Favorites\Links for 中国"  /Q  /S

ECHO.
ECHO	清理多余鼠标指针
RD  "%WINDIR%\Cursors\"  /Q  /S

ECHO.
ECHO	清理 Program Files 多余文件
RD  "%CommonProgramFiles%\Real\Update_OB\"  /Q  /S
RD  "%ProgramFiles%\LtUcx\"  /Q  /S
RD  "%ProgramFiles%\NVIDIA Corporation\Installer2\"  /Q  /S


ECHO.
COLOR18
ECHO	下面开始清理一些软件的相关信息

ECHO	清理易趣快捷方式
DEL "%WINDIR%\MTInstaller.exe"
DEL "%USERPROFILE%\桌面\易趣购物.lnk"
DEL "%USERPROFILE%\「开始」菜单\易趣购物.lnk"
RD  "%USERPROFILE%\「开始」菜单\程序\易趣购物"

DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\「开始」菜单\易趣购物.lnk"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\桌面\易趣购物.lnk"
RD  "%SYSTEMDRIVE%\Documents and Settings\Default User\「开始」菜单\程序\易趣购物"  /S  /Q

DEL "%ALLUSERSPROFILE%\「开始」菜单\程序\紫光拼音输入法 3.0\因特网搜索.lnk"
DEL "%USERPROFILE%\「开始」菜单\程序\紫光拼音输入法 3.0\因特网搜索.lnk"



RD  "%SYSTEMDRIVE%\Documents and Settings\Default User\「开始」菜单\程序\常用绿色软件.lnk"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Local Settings\Application Data\IconCache.db" /a


ECHO Icon Cache
DEL IconCache.db  /Q  /S
DEL "%APPDATA%\IconCache.db"  /Q /f attributes:h

DEL "%CommonProgramFiles%\Macromedia Shared\Service\Macromedia Licensing.exe"
RD  "%CommonProgramFiles%\Macromedia Shared"


RD  "%USERPROFILE%\.android\"  /Q  /S


ECHO	清理 ProgramData 文件夹
RD  "%ProgramData%\PACE Anti-Piracy\"  /Q  /S
RD  "%ProgramData%\PearlMountain\"  /Q  /S
RD  "%ProgramData%\FastPictureViewer\"  /Q  /S
RD  "%ProgramData%\firebird\"  /Q  /S
RD  "%ProgramData%\Axure\"  /Q  /S
RD  "%ProgramData%\kdesk\"  /Q  /S
RD  "%ProgramData%\Kingsoft\"  /Q  /S
RD  "%ProgramData%\SogouInput\"  /Q  /S
RD  "%ProgramData%\Microsoft\Windows\Start Menu\Programs\工具\"  /Q  /S


ECHO.
ECHO	清理 Zonealarm 日志
DEL "%WINDIR%\Internet Logs\*.tmp"
DEL "%WINDIR%\Internet Logs\*.txt"
DEL "%WINDIR%\Internet Logs\*.zip"

ECHO	清理 QQ
DEL %WINDIR%\138
DEL %WINDIR%\2388
DEL %WINDIR%\2702
DEL %WINDIR%\3075
DEL %WINDIR%\5166
DEL %WINDIR%\63
DEL %WINDIR%\7154
DEL %WINDIR%\804
DEL %WINDIR%\8333
DEL %WINDIR%\9079
DEL %WINDIR%\9272
DEL %WINDIR%\9294
DEL %WINDIR%\9397
RD  "%APPDATA%\Tencent"  /Q  /S
RD  "%APPDATA%\Roaming\QQ"  /Q  /S
RD  "%APPDATA%\Roaming\QQUpdate"  /Q  /S
RD  "%ProgramData%\QQPet"  /Q  /S


ECHO 清理 微信
RD  "E:\Users\Admin\Documents\WeChat Files\xepinchan\Temp"  /Q  /S


ECHO.
ECHO	清理 ESET Smart Security
RD  "%ProgramData%\ESET\ESET Smart Security\Updfiles\oldfiles"  /Q  /S
RD  "%ProgramData%\ESET\ESET Smart Security\Updfiles\temp"  /Q  /S
DEL "%ProgramData%\ESET\ESET Smart Security\Installer\3dd.msi" /f  /Q  /S
DEL "%ProgramFiles%\ESET\ESET Smart Security\eset.chm" /f  /Q  /S
DEL "%ProgramData%\ESET\ESET Smart Security\Updfiles\em*.nup" /f  /Q  /S
DEL "%SYSTEMDRIVE%\Users\All Users\ESET\ESET Smart Security\Installer\*.msi" /f  /Q  /S
DEL "%SYSTEMDRIVE%\Users\All Users\ESET\ESET Smart Security\Logs\*.*"  /f  /Q  /S

ECHO.
ECHO	清理 TeamViewer
DEL "%APPDATA%\Roaming\TeamViewer\*.*" /f  /Q  /S
DEL "E:\Dropbox\Program\TeamViewer\*.log" /f  /Q  /S

ECHO	清理 PPStream
DEL "%APPDATA%\ppStream\adsys\*.*" /f  /Q  /S
DEL "%APPDATA%\ppStream\banner\*.*" /f  /Q  /S
DEL "%APPDATA%\ppStream\notice\*.*" /f  /Q  /S
DEL "%APPDATA%\Roaming\PPStream\adsys\*.*" /f  /Q  /S
DEL "%APPDATA%\Roaming\PPStream\banner\*.*" /f  /Q  /S
DEL "%APPDATA%\Roaming\PPStream\CLCacher\*.*" /f  /Q  /S
DEL "%APPDATA%\Roaming\PPStream\FDSCache\*.*" /f  /Q  /S
DEL "%APPDATA%\Roaming\PPStream\VodCache\*.*" /f  /Q  /S

ECHO	清理 迅雷
RD  "%ProgramData%\TSLOG\"  /Q  /S
RD  "%ProgramData%\Xunlei\"  /Q  /S

ECHO	清理 WD
RD  "%ProgramData%\Western Digital\"  /Q  /S

ECHO	清理 WPS
DEL  "E:\Program Files\WPS Office\wpscenter.exe"  /Q  /S

ECHO.
ECHO	清理3721文件
DEL "%WINDIR%\Downloaded Program Files\CnsHook.dll" /f
DEL "%WINDIR%\Downloaded Program Files\cnsio.dll" /f
DEL "%WINDIR%\Downloaded Program Files\cnsmin.dll" /f
DEL "%WINDIR%\Downloaded Program Files\CnsMinIO.dll" /f
ECHO.
ECHO	清理 ACDSee 的插件:图标，字体
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\*.chm"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\*.hlp"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\*.ico"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\ID_Font.apl"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\ID_Ico.apl"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\LicenseAgreement.rtf"  /Q  /S

DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\*.chm"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\*.hlp"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\*.ico"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\ID_Font.apl"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\ID_Ico.apl"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\LicenseAgreement.rtf"  /Q  /S

ECHO.
ECHO	清理 Apple App
rename "%ProgramFiles% (x86)\Common Files\Apple\Mobile Device Support\AppleMobileDeviceService.exe" "_AppleMobileDeviceService.exe"

RD  "%ProgramData%\Apple Computer\Installer Cache\"  /Q  /S
DEL "%APPDATA%\Roaming\Apple Computer\Logs\*.log"  /Q  /S

ECHO.
ECHO	清理 Opera Cache
RD  "%APPDATA%\Opera\Opera\profile\opcache"  /Q  /S
RD  "%APPDATA%\Opera\Opera\profile\cache4"  /Q  /S

REM Opera Files
RD  "%APPDATA%\Opera\Opera\cache"  /Q  /S
RD  "%APPDATA%\Opera\Opera\temporary_downloads"  /Q  /S
RD  "%APPDATA%\Opera\Opera\opcache"  /Q  /S

REM 快速拨号缩略图
REM DEL "%APPDATA%\Opera\Opera\thumbnails\*"  /Q  /S
RD  "%APPDATA%\Opera\Opera\vps"  /Q  /S
DEL "%APPDATA%\Opera\Opera\icons\*.*"  /Q  /S
ECHO.
ECHO.
ECHO	清理 Application Data 里的文件
RD  "%APPDATA%\Media Player Classic"  /Q
RD  "%APPDATA%\pe explorer"  /Q
RD  "%APPDATA%\360safe"  /Q

RD  "%ALLUSERSPROFILE%\Application Data\Kingsoft\PowerWoRD Lite"  /Q
RD  "%ALLUSERSPROFILE%\Application Data\TEMP"  /Q

ECHO PHP Now 清理
DEL "E:\Dropbox\www\Phpnow\Apache-22\logs\*.*"  /Q  /S
DEL "E:\Dropbox\Servkit\logs\*.*"  /Q  /S
DEL "E:\Dropbox\www\Phpnow\MySQL-5.1.50\data\mysql-bin*.*"  /Q  /S
DEL "E:\Dropbox\www\Phpnow\MySQL-5.1.50\data\*.err"  /Q  /S
REM DEL "E:\Dropbox\*.log"  /Q  /S

DEL "%Windir%\Installer\5b3ce1.msi"  /Q  /S


ECHO 注册表清理

CLS
COLOR 2F
ECHO.
ECHO.
ECHO	系统清理已经完成, 感谢你使用 %author% 的作品！
ECHO	Cleaner is all done, %author% Thanks for use!

PAUSE
