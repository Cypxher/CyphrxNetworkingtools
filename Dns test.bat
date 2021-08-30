:dnsresolver
 Title DnsResolverV.01
 cls
 color E
 echo.
 echo.
 set /p domainname=Enter Domain Name :
 cls
 echo.
 echo  ██████ ██    ██  ██████ ██   ██ ███████ ██████
echo ██       ██  ██  ██   ██  ██ ██  ██      ██   ██
echo ██        ████   ██████  ███████ █████   ██████ 
echo ██         ██    ███      ██ ██  ██      █████▄
echo  ██████    ██    ██      ██   ██ ███████ ██   ██
ECHO ===============================================
ECHO Dns resolver
ECHO BY: Cyphrx
ECHO Finding the right path is always hard.
ECHO ===============================================
Pause 
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% ^| find /v "Aliases"') do set my_dns_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [####* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 8.8.8.8 ^| find /v "Aliases"') do set google_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [#######* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 208.67.222.222 ^| find /v "Aliases"') do set OpenDNS_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [##########* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 216.146.35.35 ^| find /v "Aliases"') do set DynDNS_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [#############* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 198.153.192.50 ^| find /v "Aliases"') do set Norton_DNS_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [################* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 8.26.56.26 ^| find /v "Aliases"') do set combo_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [###################* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 156.154.70.1 ^| find /v "Aliases"') do set DNS_Advantage_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [######################* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 4.2.2.2 ^| find /v "Aliases"') do set Verizon_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [#########################* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 209.244.0.3 ^| find /v "Aliases"') do set Level3_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [############################* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 81.218.119.11 ^| find /v "Aliases"') do set GreenTeamDNS_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [###############################* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 195.46.39.39 ^| find /v "Aliases"') do set SafeDNS_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [##################################* ]
 for /f "skip=1 tokens=2 delims=: " %%a in ('nslookup %domainname% 208.76.50.50 ^| find /v "Aliases"') do set SmartViper_result=%%a
 cls && echo. && echo. && echo Collecting data && echo.
 echo. [#####################################*]
 cls
 echo. && echo.
 echo. Results from various DNS server for Domain %domainname%
 echo.
 echo. Searched for A-Record
 echo. && echo. && echo.
 echo Result from Your DNS Settings : %my_dns_result%
 echo Result from Google DNS : %google_result%
 echo Result from OpenDNS : %OpenDNS_result%
 echo Result from Norton DNS : %Norton_DNS_result%
 echo Result from Combo Secure DNS : %combo_result%
 echo Result from DNS Advantage : %DNS_Advantage_result%
 echo Result from Verizon : %Verizon_result%
 echo Result from Level3 : %Level3_result%
 echo Result from GreenTeam DNS : %GreenTeamDNS_result%
 echo Result from Safe DNS : %SafeDNS_result%
 echo Result from SmartViper DNS : %SmartViper_result%
 echo Result from DynDNS : %DynDNS_result%
 echo. && echo. && echo.
 Pause
 goto :start
