certutil -urlcache * delete

ECHO OFF

CLS

REM LocalService
RD /S /Q %windir%\ServiceProfiles\LocalService\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content
RD /S /Q %windir%\ServiceProfiles\LocalService\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData
REM NetworkService
RD /S /Q %windir%\ServiceProfiles\NetworkService\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content
RD /S /Q %windir%\ServiceProfiles\NetworkService\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData
REM SystemProfile
RD /S /Q %windir%\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content
RD /S /Q %windir%\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData
REM TempLocalFiles
set pathTemp=C:\Windows\Temp\
set pathLocalTemp=C:\Users\DELL\AppData\Local\Temp\
set pathPrefetch =C:\Windows\Prefetch\

REM Para borrar solo los directorios interiores a la carpeta con RMDIR, Hay que moverse hacia el mismo directorio. USAR CD + La ruta contenedora

DEL /S /Q %pathTemp%
CD %pathTemp%
RMDIR /Q /S %pathTemp%

DEL /S /Q %pathLocalTemp%
CD %pathLocalTemp%
REM RMDIR /Q /S %pathLocalTemp%

DEL /S /Q %pathPrefetch%
CD %pathPrefetch%
REM RMDIR /Q /S %pathPrefetch%


REM Referencias: https://docs.microsoft.com/en-us/troubleshoot/windows-server/windows-security/event-id-4107-or-event-id-11-is-logged
REM Referencias: https://www.redeszone.net/2017/07/18/como-borrar-grandes-carpetas-en-windows-de-forma-rapida/


EXIT
REM SHUTDOWN /R