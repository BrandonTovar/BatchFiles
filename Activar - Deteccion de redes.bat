@ECHO OFF
CLS

REM Enable Net Framework 3
Dism /online /Enable-Feature /FeatureName:"NetFx3" -All
Dism /online /Enable-Feature /FeatureName:"Microsoft-Windows-NetFx3-OC-Package" -All
Dism /online /Enable-Feature /FeatureName:"Microsoft-Windows-NetFx4-US-OC-Package" -All
Dism /online /Enable-Feature /FeatureName:"Microsoft-Windows-NetFx3-WCF-OC-Package" -All
Dism /online /Enable-Feature /FeatureName:"Microsoft-Windows-NetFx4-WCF-US-OC-Package" -All

REM Enable SMB Protocol
Dism /online /Enable-Feature /FeatureName:"SmbDirect" -All
Dism /online /Enable-Feature /FeatureName:"SMB1Protocol" -All
Dism /online /Enable-Feature /FeatureName:"SMB1Protocol-Client" -All
Dism /online /Enable-Feature /FeatureName:"SMB1Protocol-Server" -All
Dism /online /Enable-Feature /FeatureName:"SMB1Protocol-Deprecation" -All

REM Enable services 

REM Cliente de DNS						Dnscache
REM Publicación de recurso de detección de función		FDResPub
REM Detección de SSDP						SSDPSRV
REM Dispositivo host de UPnP					upnphost

sc config Dnscache start= auto
net start Dnscache
sc config FDResPub start= auto
net start FDResPub
sc config SSDPSRV start= auto
net start SSDPSRV
sc config upnphost start= auto
net start upnphost

