@echo off
chcp 65001
title [ip pingerV.02]
mode 60,20
color E
echo  ██████ ██    ██  ██████ ██   ██ ███████ ██████
echo ██       ██  ██  ██   ██  ██ ██  ██      ██   ██
echo ██        ████   ██████  ███████ █████   ██████ 
echo ██         ██    ███      ██ ██  ██      █████▄
echo  ██████    ██    ██      ██   ██ ███████ ██   ██
echo  ```````````````````````````````````````````````
:start
SET choice=
SET /p choice=test internet? [Y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO :Internettest
IF '%choice%'=='y' GOTO :Internettest
IF '%choice%'=='N' GOTO :Sketch
IF '%choice%'=='n' GOTO :Sketch
IF '%choice%'=='' GOTO  :Sketch
ECHO "%choice%" is not valid
ECHO.
GOTO start
:Sketch
set /p Ping=Enter ip 
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...)
ping -t 2 0 10 127.0.0.1 >nul
color a
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...)
ping -t 2 0 10 127.0.0.1 >nul
color 02
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...) 
ping -t 2 0 10 127.0.0.1 >nul
color 03
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...) 
ping -t 2 0 10 127.0.0.1 >nul
color 04
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...)
ping -t 2 0 10 127.0.0.1 >nul
color 05
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...) 
ping -t 2 0 10 127.0.0.1 >nul
color 06
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...) 
ping -t 2 0 10 127.0.0.1 >nul
color 07
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...) 
ping -t 2 0 10 127.0.0.1 >nul
color 08
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...) 
ping -t 2 0 10 127.0.0.1 >nul
color 09
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...)
ping -t 2 0 10 127.0.0.1 >nul
color 0a
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...)
ping -t 2 0 10 127.0.0.1 >nul
color 0b
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...) 
ping -t 2 0 10 127.0.0.1 >nul
color 0c
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...) 
ping -t 2 0 10 127.0.0.1 >nul
color 0d
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...)
ping -t 2 0 10 127.0.0.1 >nul
color 0e
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...)
ping -t 2 0 10 127.0.0.1 >nul
color 0f
PING -n 1 %Ping% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo Lost to the void...)
ping -t 2 0 10 127.0.0.1 >nul
goto:Sketch
:Internettest
@ECHO off
color E
title [InternetTestV.01]
ECHO ===============================================
ECHO internet tester
ECHO BY: Cyphrx
ECHO Your dreams are the only thing that matters.
ECHO ===============================================
color a
CALL:IP 8.8.8.8
ECHO * Google 8.8.8.8:			%ms%
CALL:IP 8.8.4.4
ECHO * Google 8.8.4.4:			%ms%
ECHO ===============================================
color 02
CALL:IP 208.67.222.222
ECHO * OPENDNS 208.67.222.222:		%ms%
CALL:IP 208.67.222.222
ECHO * OPENDNS 208.67.220.220:		%ms%
ECHO ===============================================
color 03
CALL:IP 1.1.1.1
ECHO * Cloudflare DNS 1.1.1.1:		%ms%
CALL:IP 1.0.0.1
ECHO * Cloudflare DNS 1.0.0.1:		%ms%
ECHO ===============================================
color 04
CALL:IP 9.9.9.9
ECHO * Quad9 9.9.9.9:			%ms%
CALL:IP 149.112.112.112
ECHO * Quad9 149.112.112.112:		%ms%
ECHO ===============================================
color 05
CALL:IP 4.2.2.1
ECHO * Verizon DNS 4.2.2.1:			%ms%
CALL:IP 4.2.2.2
ECHO * Verizon DNS 4.2.2.2:			%ms%
CALL:IP 4.2.2.3
ECHO * Verizon DNS 4.2.2.3:			%ms%
CALL:IP 4.2.2.4
ECHO * Verizon DNS 4.2.2.4:			%ms%
CALL:IP 4.2.2.5
ECHO * Verizon DNS 4.2.2.5:			%ms%
ECHO ===============================================
color 06
CALL:IP 199.85.126.10
ECHO * Norton ConnectSafe 199.85.126.10:	%ms%
CALL:IP 199.85.127.10
ECHO * Norton ConnectSafe 199.85.127.10:	%ms%
ECHO ===============================================
color 07
CALL:IP 84.200.69.80
ECHO * DNS Watch 84.200.69.80:		%ms%
CALL:IP 84.200.70.40
ECHO * DNS Watch 84.200.70.40:		%ms%
ECHO ===============================================
color
CALL:IP 8.26.56.26
ECHO * Comodo Secure DNS 8.26.56.26:		%ms%
CALL:IP 8.20.247.20
ECHO * Comodo Secure DNS 8.20.247.20:	%ms%
ECHO ===============================================
color 08
CALL:IP 64.6.64.6
ECHO * Verisign 64.6.64.6:			%ms%
CALL:IP 64.6.65.6	
ECHO * Verisign 64.6.65.6:			%ms%
ECHO ===============================================
color 09
CALL:IP 192.95.54.3
ECHO * OpenNIC 192.95.54.3:			%ms%
CALL:IP 192.95.54.1
ECHO * OpenNIC 192.95.54.1:			%ms%
ECHO ===============================================
color 0a
CALL:IP 81.218.119.11
ECHO * GreenTeamDNS 81.218.119.11:		%ms%
CALL:IP 209.88.198.133	
ECHO * GreenTeamDNS 209.88.198.133:		%ms%
ECHO ===============================================
color 0b
CALL:IP 185.228.168.9
ECHO * CleanBrowsing 185.228.168.9:		%ms%
CALL:IP 185.228.169.9
ECHO * CleanBrowsing 185.228.169.9:		%ms%
ECHO ===============================================
color 0c
CALL:IP 198.101.242.72
ECHO * Alternate DNS 198.101.242.72:		%ms%
CALL:IP 23.253.163.53
ECHO * Alternate DNS 23.253.163.53:		%ms%
ECHO ===============================================
color 0d
CALL:IP 176.103.130.130
ECHO * AdGuard DNS 176.103.130.130:		%ms%
CALL:IP 176.103.130.131
ECHO * AdGuard DNS 176.103.130.131:		%ms%
ECHO ===============================================
color 0e
CALL:IP 176.209.244.0.3
ECHO * CenturyLink 209.244.0.3:		%ms%
CALL:IP 209.244.0.4
ECHO * CenturyLink 209.244.0.4:		%ms%
ECHO ===============================================
color 0f
CALL:IP 195.46.39.39
ECHO * SafeDNS 195.46.39.39:			%ms%
CALL:IP 195.46.39.40
ECHO * SafeDNS 195.46.39.40:			%ms%
ECHO ===============================================
color 0g
CALL:IP 208.76.50.50
ECHO * SmartViper 208.76.50.50:		%ms%
CALL:IP 208.76.51.51
ECHO * SmartViper 208.76.51.51:		%ms%
ECHO ===============================================
color 0h
CALL:IP 216.146.35.35
ECHO * DYN 216.146.35.35:			%ms%
CALL:IP 216.146.36.36
ECHO * DYN 216.146.36.36:			%ms%
ECHO ===============================================
color 0i
CALL:IP 45.33.97.5
ECHO * FreeDNS 45.33.97.5:			%ms%
CALL:IP 37.235.1.177
ECHO * FreeDNS 37.235.1.177:			%ms%
ECHO ===============================================
color 0j
CALL:IP 77.88.8.8
ECHO * Yandex.DNS 77.88.8.8:			%ms%
CALL:IP 77.88.8.1
ECHO * Yandex.DNS 77.88.8.1:			%ms%
ECHO ===============================================
color 0k
CALL:IP 91.239.100.100
ECHO * UncensoredDNS 91.239.100.100:		%ms%
CALL:IP 89.233.43.71
ECHO * UncensoredDNS 89.233.43.71:		%ms%
ECHO ===============================================
color 0l
CALL:IP 74.82.42.42
ECHO * Hurricane Electric 74.82.42.42:	%ms%
ECHO ===============================================
color 0m
CALL:IP 109.69.8.51
ECHO * puntCAT 109.69.8.51:			%ms%
ECHO ===============================================
color 0n
CALL:IP 156.154.70.1
ECHO * Neustar 156.154.70.1:			%ms%
CALL:IP 156.154.71.1	
ECHO * Neustar 156.154.71.1:			%ms%
ECHO ===============================================
color 0o
CALL:IP 45.33.97.5
ECHO * Fourth Estate 45.77.165.194:		%ms%
ECHO ===============================================
color 0p
CALL:IP 37.235.1.177
ECHO * Tenta 37.235.1.177:			%ms%
CALL:IP 99.192.182.101
ECHO * Tenta 99.192.182.101:			%ms%
ECHO ===============================================
color 0q
ECHO.
ECHO ** Test Done! **
ECHO.
ECHO.
  
ECHO.&PAUSE&GOTO:EOF
:IP
SET ms=# RTO #
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF
