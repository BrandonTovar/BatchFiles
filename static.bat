@echo off
chcp 1252>nul
netsh interface ipv4 set address "Conexión de red inalámbrica" static 192.100.10.38 255.255.255.0 192.100.10.240
chcp %cp%>nul
