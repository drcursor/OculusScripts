net stop OVRService
reg add "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0" /v ProcessorNameString /t REG_SZ /d "Intel(R) Core(TM) i7-4770K CPU @ 3.90GHz" /f
net start OVRService
