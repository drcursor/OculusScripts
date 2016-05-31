@echo off

:: Save this batch as Two.bat and place it in your home directory (Usually C:\)

set path=%path%;c:\windows\system32;c:\windows
set zLog="C:\Windows\Logs\Oculus.log"

ECHO.>> %zLog%
ECHO ------------------------------------------------>> %zLog%
ECHO %DATE%    %TIME%	-	Starting Oculus Script...    >> %zLog%
ECHO ------------------------------------------------>> %zLog%

Echo %DATE%	%TIME%	-	 Stopping Services... >> %zLog%
net stop OVRService >> %zLog% 2>>&1
Echo %DATE%	%TIME%	-	 Services Stopped... (Errorlevel %zErr% ) >> %zLog%

Echo %DATE%	%TIME%	-	 Updating registry with compliant processor... >> %zLog%
reg add "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0" /v ProcessorNameString /t REG_SZ /d "Intel(R) Core(TM) i7-4770K CPU @ 3.90GHz" /f
Echo %DATE%	%TIME%	-	 Registry edit completed... (Errorlevel %zErr% ) >> %zLog%

Echo %DATE%	%TIME%	-	 Starting Services... >> %zLog%
net start OVRService >> %zLog% 2>>&1
Echo %DATE%	%TIME%	-	 Services Stopped... (Errorlevel %zzErr% ) >> %zLog%

ECHO -------------------------------------------------------------------->> %zLog%
ECHO %DATE%	%TIME%	-	Stopping Oculus Script...  (Errorlevel %zErr% ) >> %zLog%
ECHO -------------------------------------------------------------------->> %zLog%
ECHO.>> %zLog%

exit %zErr%