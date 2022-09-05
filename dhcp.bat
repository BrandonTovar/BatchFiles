@echo off
chcp 1252>nul
netsh interface ipv4 set address "Conexión de red inalámbrica" dhcp
chcp %cp%>nul