@echo off
chcp 1252>nul
netsh interface ipv4 set address "Conexi�n de red inal�mbrica" dhcp
chcp %cp%>nul