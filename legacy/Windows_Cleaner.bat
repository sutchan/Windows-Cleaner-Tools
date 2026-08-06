@ECHO	off
REM 璁剧疆鐜鍙橀噺
SET build=20220620
SET author=Sut
SET title=Windows Cleaner Tools/Windows 娓呯悊宸ュ叿


title %title% by %author% Ver:%build%

COLOR 2F
ECHO	鈹?					鈹?ECHO		銆?%title% 銆?ECHO.
ECHO		Author  : %author%
ECHO		Contact : xepinchan@qq.com
ECHO		Building: %build%
ECHO	鈹?					鈹?
ECHO.	鏀寔 Windows XP/7/8/10
ECHO.
ECHO.	鎴戠殑 Windows 鐗堟湰鏄?VER

ECHO.
ECHO.	鐜板湪寮€濮嬫竻鐞嗕紭鍖?Windows锛?ECHO.	寤鸿鎮ㄩ€€鍑烘墍鏈夋鍦ㄨ繍琛岀殑杞欢锛?ECHO.	浠ヨ揪鍒版渶濂界殑娓呯悊鏁堟灉锛?ECHO.	璇锋寜鍙抽敭鈥滀互绠＄悊鍛樿韩浠借繍琛屸€濇湰绋嬪簭锛侊紒锛?  
ECHO.

PAUSE
COLOR 1E
ECHO.
ECHO 璁剧疆绯荤粺涓存椂鏂囦欢澶逛綅缃?
ECHO	娓呯悊涓存椂鏂囦欢澶圭殑鍨冨溇
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
ECHO	娓呯悊 Windows 鐩綍涓嬬殑鏃犵敤鏂囦欢鍜屾枃浠跺す
DEL "%WINDIR%\*.ico" /f
DEL "%WINDIR%\*.log"  /S
DEL "%WINDIR%\*.tmp" /f
DEL "%WINDIR%\clock.avi"
DEL "%WINDIR%\dragon.exe" /f
DEL "%WINDIR%\IRIMG1.BMP" /f
DEL "%WINDIR%\system32\*.tmp"
DEL "%WINDIR%\SysWOW64\oem7F7.exe" /f
DEL "%WINDIR%\SysWOW64\service.exe" /f
DEL "%WINDIR%\SysWOW64\Win7缃戦摱琛ヤ竵.exe" /f
DEL "%WINDIR%\SysWOW64\璧勬枡杞Щ宸ュ叿.exe" /f
DEL "%WINDIR%\SysWOW64\椹卞姩绮剧伒.exe" /f
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

ECHO 鍒犻櫎琛ヤ竵澶囦唤鐩綍
RD  %windir%\SoftwareDistribution\Download  /Q  /S
RD  %windir%\$hf_mig$  /Q  /S
RD  %SYSTEMDRIVE%\PerfLog  /Q  /S
dir %windir%\$NtUninstall* /a:d /b >%windir%\update.txt
for /f %%i in (%windir%\update.txt) do RD  %windir%\%%i  /S  /Q
DEL %windir%\update.txt /f  /Q
RD  "%SYSTEMDRIVE%\SWTOOLS"  /Q  /S

REM 鏃犵敤鏂囦欢澶规竻鐞?DEL "%LOCALAPPDATA%\Microsoft\Windows\Cache\*.*"  /Q  /S
DEL "%LOCALAPPDATA%\Microsoft\Windows\Explorer\*.*"  /Q  /S
DEL "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Caches\*.*"  /Q
DEL "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Explorer\*.*"  /Q
DEL "%SYSTEMDRIVE%\Users\Public\Music\Sample Music\*.*"  /Q
DEL "%SYSTEMDRIVE%\Users\Public\Pictures\Sample Pictures\*.*"  /Q
DEL "%SYSTEMDRIVE%\Users\Public\Videos\Sample Videos\*.*"  /Q
DEL "%windir%\Web\Wallpaper\*.jpg"  /Q  /S
DEL "%windir%\Web\Wallpaper\Landscapes\*.jpg"  /Q  /S
RD  "%APPDATA%\360Safe"  /Q  /S
RD  "%APPDATA%\360se"  /Q  /S
RD  "%APPDATA%\AiQiSoft"  /Q  /S
RD  "%APPDATA%\AliWorkbench"  /Q  /S
RD  "%APPDATA%\AliWorkbench\Update"  /Q  /S
RD  "%APPDATA%\dg\"   /Q  /S
RD  "%APPDATA%\FlashFXP"  /Q  /S
RD  "%APPDATA%\Foxit Software\"   /Q  /S
RD  "%APPDATA%\FreeFileSync\Logs"  /Q  /S
RD  "%APPDATA%\HD Tune Pro\"   /Q  /S
RD  "%APPDATA%\Kunlun\"   /Q  /S
RD  "%APPDATA%\KunlunInput\"   /Q  /S
RD  "%APPDATA%\LDSGameCenter"  /Q  /S
RD  "%APPDATA%\Macromedia\"   /Q  /S
RD  "%APPDATA%\Microsoft\Windows\Burn\"  /Q  /S
RD  "%APPDATA%\NVIDIA"  /Q  /S
RD  "%APPDATA%\PPStream"  /Q  /S
RD  "%APPDATA%\Tencent"  /Q  /S
RD  "%APPDATA%\thunderx\Cache"  /Q  /S
RD  "%APPDATA%\thunderx\GPUCache"  /Q  /S
RD  "%APPDATA%\youku"  /Q  /S
RD  "%LOCALAPPDATA%\ElevatedDiagnostics"  /Q  /S
RD  "%LOCALAPPDATA%\Microsoft\Feeds Cache\"  /Q  /S
RD  "%LOCALAPPDATA%\Temp"  /Q  /S
RD  "%LOCALAPPDATA%Low\Thunder Network"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Local\Temp"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\360Safe"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\360se"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\FlashFXP"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\KuGou8"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\PPStream"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\Tencent"  /Q  /S
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Roaming\Thunder Network"  /Q  /S

REM Win8 鏃犵敤鏂囦欢娓呯悊
RD  "%APPDATA%\Microsoft\Windows\Temporary Internet Files\"  /S  /Q
RD  "%APPDATA%\Microsoft\Windows\WebCache\"  /S  /Q
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Temporary Internet Files\"  /S  /Q
RD  "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\WebCache\"  /S  /Q
RD  "%windir%\CbsTemp"  /S  /Q


ECHO.
ECHO	娓呯┖鍥炴敹绔?RD  %SYSTEMDRIVE%\RECYCLER\*  /Q  /S
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
ECHO	娓呴櫎 Cookies
DEL "%appdata%\Microsoft\Windows\Cookies\*.*" /f  /S  /Q

ECHO.
ECHO	寮€濮嬭彍鍗?DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞Windows Catalog.lnk"
DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞Windows Update.lnk"
DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞璁惧畾绋嬪簭璁块棶鍜岄粯璁ゅ€?lnk"
DEL "E:\admin\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\Outlook Express.lnk"
DEL "E:\admin\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\Windows Media Player.lnk"

ECHO.
ECHO	绉诲姩寮€濮嬭彍鍗曠殑涓€浜涘揩鎹锋柟寮?DEL "%USERPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\婕父 Windows XP.lnk"

move "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\Windows Movie Maker.lnk" "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\闄勪欢\濞变箰\Windows Movie Maker.lnk"
move "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\杩滅▼鍗忓姪.lnk" "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\闄勪欢\杩滅▼鍗忓姪.lnk"
move "%SYSTEMDRIVE%\Documents and Settings\Administrator\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\杩滅▼鍗忓姪.lnk" "%SYSTEMDRIVE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\闄勪欢\杩滅▼鍗忓姪.lnk"
move "%SYSTEMDRIVE%\Documents and Settings\Default User\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\杩滅▼鍗忓姪.lnk" "%SYSTEMDRIVE%\Documents and Settings\Default User\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\闄勪欢\杩滅▼鍗忓姪.lnk"
move "%USERPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\Windows Movie Maker.lnk" "%USERPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\闄勪欢\濞变箰\Windows Movie Maker.lnk"
move "%USERPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\杩滅▼鍗忓姪.lnk" "%USERPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\闄勪欢\杩滅▼鍗忓姪.lnk" /y
move "E:\admin\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\杩滅▼鍗忓姪.lnk" "E:\admin\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\闄勪欢\杩滅▼鍗忓姪.lnk"


ECHO.
ECHO	澶嶅埗闊抽噺鎺у埗蹇嵎鏂瑰紡鍒板揩閫熷惎鍔ㄦ爮
xcopy "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\闄勪欢\濞变箰\闊抽噺鎺у埗.lnk" "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\" /y

ECHO.
ECHO	娓呯悊XP鑷甫鐨勫绾?DEL "%WINDIR%\web\Wallpaper\*.jpg"
DEL "%WINDIR%\web\Wallpaper\Bliss.bmp"
DEL "%WINDIR%\web\Wallpaper\Windows\auney.jpg"

ECHO	娓呯悊澶囦唤OEM LOGO
DEL  "%WINDIR%\system32\oemlogo_bak.bmp"

ECHO.
ECHO	娓呯悊 MaxDOS 鑷甫娴忚鍣ㄦ彃浠?DEL "%WINDIR%\system32\BBN_iCafe_071210.dll"
DEL "D:\MaxDOS\bd.exe"
net stop knlrun
sc config knlrun start= Disabled

ECHO.
ECHO	娓呯悊 鎼滅嫍杈撳叆娉?鏃犵敤鏂囦欢
DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鎼滅嫍鎷奸煶杈撳叆娉昞瀹樻柟缃戠珯.lnk"
DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鎼滅嫍鎷奸煶杈撳叆娉昞瀹樻柟璁哄潧.lnk"
DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鎼滅嫍鎷奸煶杈撳叆娉昞甯姪.lnk"
DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鎼滅嫍鎷奸煶杈撳叆娉昞鎰忚鍙嶉.lnk"
DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鎼滅嫍鎷奸煶杈撳叆娉昞鎵撳瓧鍏ラ棬.lnk"
DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鎼滅嫍鎷奸煶杈撳叆娉昞鐨偆涓嬭浇.lnk"
DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鎼滅嫍鎷奸煶杈撳叆娉昞缁嗚優璇嶅簱.lnk"
DEL "%ProgramFiles% (x86)\SogouInput\*.dmp"  /S
DEL "%ProgramFiles% (x86)\SogouInput\*.log"  /S
DEL "%ProgramFiles% (x86)\SogouInput\*.url"  /S
DEL "%ProgramFiles% (x86)\SogouInput\crashrpt.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\errorlog.txt"  /S
DEL "%ProgramFiles% (x86)\SogouInput\FlashSkinPreview.ini"  /S
DEL "%ProgramFiles% (x86)\SogouInput\OlympicNews.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\PinyinUp.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SkinRecommend.ini"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SkinReg.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SogouCloud.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SogouFlash.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\sogoupy.zip"  /S
DEL "%ProgramFiles% (x86)\SogouInput\SohuNews.exe"  /S
DEL "%ProgramFiles% (x86)\SogouInput\urlBaseG.enc"  /S
DEL "%ProgramFiles% (x86)\SogouInput\urlguide.enc"  /S  /Q
DEL "%ProgramFiles% (x86)\SogouInput\userNetSchedule.exe"  /S
DEL "%ProgramFiles%\SogouInput\*.dmp"  /S
DEL "%ProgramFiles%\SogouInput\*.log"  /S
DEL "%ProgramFiles%\SogouInput\*.url"  /S
DEL "%ProgramFiles%\SogouInput\crashrpt.exe"  /S
DEL "%ProgramFiles%\SogouInput\errorlog.txt"  /S
DEL "%ProgramFiles%\SogouInput\FlashSkinPreview.ini"  /S
DEL "%ProgramFiles%\SogouInput\OlympicNews.exe"  /S
DEL "%ProgramFiles%\SogouInput\PinyinUp.exe"  /S
DEL "%ProgramFiles%\SogouInput\SkinRecommend.ini"  /S
DEL "%ProgramFiles%\SogouInput\SkinReg.exe"  /S
DEL "%ProgramFiles%\SogouInput\SogouCloud.exe"  /S
DEL "%ProgramFiles%\SogouInput\SogouFlash.exe"  /S
DEL "%ProgramFiles%\SogouInput\sogoupy.zip"  /S
DEL "%ProgramFiles%\SogouInput\SohuNews.exe"  /S /F
DEL "%ProgramFiles%\SogouInput\urlBaseG.enc"  /S
DEL "%ProgramFiles%\SogouInput\urlguide.enc"  /S
DEL "%ProgramFiles%\SogouInput\userNetSchedule.exe"  /S
DEL "E:\Program Files (x86)\SogouInput\*.url"  /S /F
DEL "E:\Program Files (x86)\SogouInput\SohuNews.exe"  /S /F
RD  "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鎼滅嫍鎷奸煶杈撳叆娉昞閾炬帴"  /S  /Q
RD  "%ProgramFiles%\SogouExtension\"  /Q  /S


ECHO	娓呯悊 鎼滅嫍杈撳叆娉?鏃犵敤鏂囦欢
DEL "%ProgramFiles% (x86)\SogouWBInput\*.url"  /S
RD  "%ProgramFiles% (x86)\SogouWBInput\*\ErrorLog\"  /Q  /S

RD  "%ProgramFiles% (x86)\Tools\"  /Q  /S

ECHO	鍒犻櫎浠栧浗璇█绌烘枃浠跺す
RD  "%WINDIR%\system32\1025"
RD  "%WINDIR%\system32\1028"
RD  "%WINDIR%\system32\1031"
RD  "%WINDIR%\system32\1037"
RD  "%WINDIR%\system32\1041"
RD  "%WINDIR%\system32\1042"
RD  "%WINDIR%\system32\1054"
RD  "%WINDIR%\system32\3076"

ECHO	鍒犻櫎 boot 浠栧浗璇█
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
ECHO	娓呯悊澶氫綑灞忓箷淇濇姢绋嬪簭
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

ECHO	鍒犻櫎鑷姩鏇存柊绋嬪簭
DEL "%WINDIR%\system32\wuauclt.exe"
DEL "%WINDIR%\system32\wuauclt1.exe"
DEL "%WINDIR%\system32\dllcache\wuauclt.exe"
DEL "%WINDIR%\system32\dllcache\wuauclt1.exe"

ECHO.
ECHO	娓呯悊澶氫綑甯姪
rename "%WINDIR%\Help\agt0804.hlp" agt0804_.hlp
DEL "%WINDIR%\Help\agt*.hlp"
rename "%WINDIR%\Help\agt0804_.hlp" agt0804.hlp

ECHO.
ECHO	娓呯悊澶氫綑杈撳叆娉? 绻佷綋涓枃杈撳叆娉?RD  "%WINDIR%\ime\CHTIME"  /Q  /S
DEL "%WINDIR%\system32\dllcache\hwxcht.dll"

ECHO	IMJP8_1 鏃ユ枃杈撳叆娉?DEL "%WINDIR%\system32\dllcache\cplexe.exe"
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



ECHO 鏄惧崱鐩稿叧鏂囦欢
DEL "%WINDIR%\system32\igfxr*.lrc"  /Q
DEL "%WINDIR%\system32\drivers\igfxr*.lrc"  /Q  /S

ECHO.
ECHO 娓呯悊绯荤粺琛ヤ竵澶囦唤
RD  %WINDIR%\$hf_mig$  /Q  /S

ECHO	娓呯悊 Prefetch 鏂囦欢澶?DEL "%WINDIR%\Prefetch\*.*"  /Q /f


ECHO	娓呯悊 Windows7 鍚姩椤?DEL "%USERPROFILE%\Start Menu\*.com*"  /Q  /S
DEL "%USERPROFILE%\銆屽紑濮嬨€嶈彍鍗昞*.com*"  /Q  /S



ECHO 澶氫綑鐨勫０鍗″簲鐢ㄧ▼搴?DEL "%WINDIR%\ALCMTR.EXE" /f
DEL "%WINDIR%\ALCWZRD.EXE" /f
DEL "%WINDIR%\RtlUpd.exe" /f
DEL "%WINDIR%\SOUNDMAN.EXE" /f
DEL "%WINDIR%\SkyTel.exe" /f

ECHO	娓呯悊 Windows 鑷甫 BMP 澧欑焊
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
ECHO	娓呯悊蹇€熷惎鍔ㄦ爮鍥炬爣
DEL "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\Windows Media Player.lnk"
DEL "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\鍥犵壒缃戞悳绱?lnk"

ECHO.
ECHO	娓呯悊IE鏀惰棌澶瑰師濮嬫潯鐩?DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\MSN.com.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\鐢靛彴鎸囧崡.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\閾炬帴\Windows Media.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\閾炬帴\windows.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\閾炬帴\鍏嶈垂 Hotmail.url"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Favorites\閾炬帴\鑷畾涔夐摼鎺?url"
DEL "%USERPROFILE%\Favorites\MSN.com.url"
DEL "%USERPROFILE%\Favorites\鐢靛彴鎸囧崡.url"
DEL "%USERPROFILE%\Favorites\閾炬帴\Windows Media.url"
DEL "%USERPROFILE%\Favorites\閾炬帴\windows.url"
DEL "%USERPROFILE%\Favorites\閾炬帴\鍏嶈垂 Hotmail.url"
DEL "%USERPROFILE%\Favorites\閾炬帴\鑷畾涔夐摼鎺?url"

DEL "%USERPROFILE%\Local Settings\Temp\*.*"  /Q  /S
DEL "%USERPROFILE%\Local Settings\History\*"  /Q  /S
DEL "%USERPROFILE%\Recent\*.lnk"  /Q
DEL "%APPDATA%\Roaming\Microsoft\Windows\Recent\*.lnk"  /Q

ECHO	娓呯悊WIN7 IE鏀惰棌澶瑰師濮嬫潯鐩?RD  "%USERPROFILE%\Favorites\MSN 缃戠珯"  /Q  /S
RD  "%USERPROFILE%\Favorites\Microsoft 缃戠珯"  /Q  /S
RD  "%USERPROFILE%\Favorites\Windows Live"  /Q  /S
RD  "E%USERPROFILE%\Favorites\Links for 涓浗"  /Q  /S
RD  "E:\admin\Favorites\Links for 涓浗"  /Q  /S
RD  "E:\admin\Favorites\MSN 缃戠珯"  /Q  /S
RD  "E:\admin\Favorites\Microsoft 缃戠珯"  /Q  /S
RD  "E:\admin\Favorites\Windows Live"  /Q  /S

ECHO.
ECHO	娓呯悊澶氫綑榧犳爣鎸囬拡
RD  "%WINDIR%\Cursors\"  /Q  /S

ECHO.
ECHO	娓呯悊 Program Files 澶氫綑鏂囦欢
RD  "%CommonProgramFiles%\Real\Update_OB\"  /Q  /S
RD  "%ProgramFiles%\LtUcx\"  /Q  /S
RD  "%ProgramFiles%\NVIDIA Corporation\Installer2\"  /Q  /S


ECHO.
COLOR18
ECHO	涓嬮潰寮€濮嬫竻鐞嗕竴浜涜蒋浠剁殑鐩稿叧淇℃伅

ECHO	娓呯悊鏄撹叮蹇嵎鏂瑰紡
DEL "%WINDIR%\MTInstaller.exe"
DEL "%USERPROFILE%\妗岄潰\鏄撹叮璐墿.lnk"
DEL "%USERPROFILE%\銆屽紑濮嬨€嶈彍鍗昞鏄撹叮璐墿.lnk"
RD  "%USERPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鏄撹叮璐墿"

DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\銆屽紑濮嬨€嶈彍鍗昞鏄撹叮璐墿.lnk"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\妗岄潰\鏄撹叮璐墿.lnk"
RD  "%SYSTEMDRIVE%\Documents and Settings\Default User\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\鏄撹叮璐墿"  /S  /Q

DEL "%ALLUSERSPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\绱厜鎷奸煶杈撳叆娉?3.0\鍥犵壒缃戞悳绱?lnk"
DEL "%USERPROFILE%\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\绱厜鎷奸煶杈撳叆娉?3.0\鍥犵壒缃戞悳绱?lnk"



RD  "%SYSTEMDRIVE%\Documents and Settings\Default User\銆屽紑濮嬨€嶈彍鍗昞绋嬪簭\甯哥敤缁胯壊杞欢.lnk"
DEL "%SYSTEMDRIVE%\Documents and Settings\Default User\Local Settings\Application Data\IconCache.db" /a


ECHO Icon Cache
DEL IconCache.db  /Q  /S
DEL "%APPDATA%\IconCache.db"  /Q /f attributes:h

DEL "%CommonProgramFiles%\Macromedia Shared\Service\Macromedia Licensing.exe"
RD  "%CommonProgramFiles%\Macromedia Shared"


RD  "%USERPROFILE%\.android\"  /Q  /S


ECHO	娓呯悊 ProgramData 鏂囦欢澶?RD  "%ProgramData%\Axure\"  /Q  /S
RD  "%ProgramData%\FastPictureViewer\"  /Q  /S
RD  "%ProgramData%\Kingsoft\"  /Q  /S
RD  "%ProgramData%\Microsoft\Windows\Start Menu\Programs\宸ュ叿\"  /Q  /S
RD  "%ProgramData%\PACE Anti-Piracy\"  /Q  /S
RD  "%ProgramData%\PearlMountain\"  /Q  /S
RD  "%ProgramData%\SogouInput\"  /Q  /S
RD  "%ProgramData%\firebird\"  /Q  /S
RD  "%ProgramData%\kdesk\"  /Q  /S


ECHO.
ECHO	娓呯悊 Zonealarm 鏃ュ織
DEL "%WINDIR%\Internet Logs\*.tmp"
DEL "%WINDIR%\Internet Logs\*.txt"
DEL "%WINDIR%\Internet Logs\*.zip"

ECHO	娓呯悊 QQ
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
RD  "%APPDATA%\Roaming\QQ"  /Q  /S
RD  "%APPDATA%\Roaming\QQUpdate"  /Q  /S
RD  "%APPDATA%\Tencent"  /Q  /S
RD  "%ProgramData%\QQPet"  /Q  /S


ECHO 娓呯悊 寰俊
RD  "E:\Users\Admin\Documents\WeChat Files\xepinchan\Temp"  /Q  /S


ECHO.
ECHO	娓呯悊 ESET Smart Security
DEL "%ProgramData%\ESET\ESET Smart Security\Installer\3dd.msi" /f  /Q  /S
DEL "%ProgramData%\ESET\ESET Smart Security\Updfiles\em*.nup" /f  /Q  /S
DEL "%ProgramFiles%\ESET\ESET Smart Security\eset.chm" /f  /Q  /S
DEL "%SYSTEMDRIVE%\Users\All Users\ESET\ESET Smart Security\Installer\*.msi" /f  /Q  /S
DEL "%SYSTEMDRIVE%\Users\All Users\ESET\ESET Smart Security\Logs\*.*"  /f  /Q  /S
RD  "%ProgramData%\ESET\ESET Smart Security\Updfiles\oldfiles"  /Q  /S
RD  "%ProgramData%\ESET\ESET Smart Security\Updfiles\temp"  /Q  /S

ECHO.
ECHO	娓呯悊 TeamViewer
DEL "%APPDATA%\Roaming\TeamViewer\*.*" /f  /Q  /S
DEL "E:\Dropbox\Program\TeamViewer\*.log" /f  /Q  /S

ECHO	娓呯悊 PPStream
DEL "%APPDATA%\Roaming\PPStream\CLCacher\*.*" /f  /Q  /S
DEL "%APPDATA%\Roaming\PPStream\FDSCache\*.*" /f  /Q  /S
DEL "%APPDATA%\Roaming\PPStream\VodCache\*.*" /f  /Q  /S
DEL "%APPDATA%\Roaming\PPStream\adsys\*.*" /f  /Q  /S
DEL "%APPDATA%\Roaming\PPStream\banner\*.*" /f  /Q  /S
DEL "%APPDATA%\ppStream\adsys\*.*" /f  /Q  /S
DEL "%APPDATA%\ppStream\banner\*.*" /f  /Q  /S
DEL "%APPDATA%\ppStream\notice\*.*" /f  /Q  /S

ECHO	娓呯悊 杩呴浄
RD  "%ProgramData%\TSLOG\"  /Q  /S
RD  "%ProgramData%\Xunlei\"  /Q  /S

ECHO	娓呯悊 WD
RD  "%ProgramData%\Western Digital\"  /Q  /S

ECHO	娓呯悊 WPS
DEL  "E:\Program Files\WPS Office\wpscenter.exe"  /Q  /S

ECHO.
ECHO	娓呯悊3721鏂囦欢
DEL "%WINDIR%\Downloaded Program Files\CnsHook.dll" /f
DEL "%WINDIR%\Downloaded Program Files\cnsio.dll" /f
DEL "%WINDIR%\Downloaded Program Files\cnsmin.dll" /f
DEL "%WINDIR%\Downloaded Program Files\CnsMinIO.dll" /f
ECHO.
ECHO	娓呯悊 ACDSee 鐨勬彃浠?鍥炬爣锛屽瓧浣?DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\*.chm"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\*.hlp"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\*.ico"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\ID_Font.apl"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\ID_Ico.apl"  /Q  /S
DEL "%ProgramFiles% (x86)\ACD Systems\ACDSee\9.0\LicenseAgreement.rtf"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\*.chm"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\*.hlp"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\*.ico"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\ID_Font.apl"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\ID_Ico.apl"  /Q  /S
DEL "%ProgramFiles%\ACD Systems\ACDSee\9.0\LicenseAgreement.rtf"  /Q  /S

ECHO.
ECHO	娓呯悊 Apple App
rename "%ProgramFiles% (x86)\Common Files\Apple\Mobile Device Support\AppleMobileDeviceService.exe" "_AppleMobileDeviceService.exe"

RD  "%ProgramData%\Apple Computer\Installer Cache\"  /Q  /S
DEL "%APPDATA%\Roaming\Apple Computer\Logs\*.log"  /Q  /S

ECHO.
ECHO	娓呯悊 Opera Cache
RD  "%APPDATA%\Opera\Opera\profile\opcache"  /Q  /S
RD  "%APPDATA%\Opera\Opera\profile\cache4"  /Q  /S

REM Opera Files
RD  "%APPDATA%\Opera\Opera\cache"  /Q  /S
RD  "%APPDATA%\Opera\Opera\temporary_downloads"  /Q  /S
RD  "%APPDATA%\Opera\Opera\opcache"  /Q  /S

REM 蹇€熸嫧鍙风缉鐣ュ浘
REM DEL "%APPDATA%\Opera\Opera\thumbnails\*"  /Q  /S
RD  "%APPDATA%\Opera\Opera\vps"  /Q  /S
DEL "%APPDATA%\Opera\Opera\icons\*.*"  /Q  /S
ECHO.
ECHO.
ECHO	娓呯悊 Application Data 閲岀殑鏂囦欢
RD  "%APPDATA%\Media Player Classic"  /Q
RD  "%APPDATA%\pe explorer"  /Q
RD  "%APPDATA%\360safe"  /Q

RD  "%ALLUSERSPROFILE%\Application Data\Kingsoft\PowerWoRD Lite"  /Q
RD  "%ALLUSERSPROFILE%\Application Data\TEMP"  /Q

ECHO PHP Now 娓呯悊
DEL "E:\Dropbox\Servkit\logs\*.*"  /Q  /S
DEL "E:\Dropbox\www\Phpnow\Apache-22\logs\*.*"  /Q  /S
DEL "E:\Dropbox\www\Phpnow\MySQL-5.1.50\data\*.err"  /Q  /S
DEL "E:\Dropbox\www\Phpnow\MySQL-5.1.50\data\mysql-bin*.*"  /Q  /S
REM DEL "E:\Dropbox\*.log"  /Q  /S

DEL "%Windir%\Installer\5b3ce1.msi"  /Q  /S


ECHO 娉ㄥ唽琛ㄦ竻鐞?
CLS
COLOR 2F
ECHO.
ECHO.
ECHO	绯荤粺娓呯悊宸茬粡瀹屾垚, 鎰熻阿浣犱娇鐢?%author% 鐨勪綔鍝侊紒
ECHO	Cleaner is all done, %author% Thanks for use!

PAUSE