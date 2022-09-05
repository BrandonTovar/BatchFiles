@ECHO OFF
CLS
ECHO Limpiando archivos temporales.

set pathTemp=C:\Windows\Temp\
set pathLocalTemp=C:\Users\DELL\AppData\Local\Temp\
set pathPrefetch=C:\Windows\Prefetch\

CD %pathTemp%
DEL /S /Q %pathTemp%
RMDIR /Q /S %pathTemp%

CD %pathLocalTemp%
DEL /S /Q %pathLocalTemp%
RMDIR /Q /S %pathLocalTemp%

CD %pathPrefetch%
DEL /S /Q %pathPrefetch%
RMDIR /Q /S %pathPrefetch%

EXIT