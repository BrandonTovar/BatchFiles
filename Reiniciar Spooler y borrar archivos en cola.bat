@ECHO OFF
CLS

REM Detener la cola de impresi�n

net stop spooler

REM Borrar los archivos en cola

CD C:\Windows\System32\spool\PRINTERS\ 
DEL /S /Q C:\Windows\System32\spool\PRINTERS\
RMDIR /Q /S C:\Windows\System32\spool\PRINTERS\

REM Iniciar el servicio de impresi�n

net start spooler

CLS
EXIT