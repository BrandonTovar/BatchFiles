@ECHO OFF
CLS
net stop Spooler
timeout /t 5
net start Spooler
ECHO Listo!!
PAUSE