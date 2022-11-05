@ECHO OFF
color F9
title PARTITION WIZARD v1.21 BY ALI BEYAZ (AKA SYMBUZZER)
:Start
cls
echo -------------------------------------------------------------------------------
echo l              PARTITION WIZARD v1.20 BY ALI BEYAZ (AKA SYMBUZZER)            l
echo l                      http:\\androidforum.tytung.com                         l
echo -------------------------------------------------------------------------------
echo.
echo Select your Leo\HD2 model:
echo    E - EU (WWE)
echo    T - T-mobile
echo    R - Apply last Partition Config
echo.
echo Menu:
echo    C - Changelog
echo    H - Help
echo    A - About
echo    X - Exit

echo.
SET Choice=
SET /P Choice=Type the letter and press Enter: 
IF NOT '%Choice%'=='' SET Choice=%Choice:~0,1%
echo.
IF /I '%Choice%'=='X' goto Exit
IF /I '%Choice%'=='A' goto About
IF /I '%Choice%'=='H' goto Help
IF /I '%Choice%'=='C' goto Changelog
IF /I '%Choice%'=='E' goto ItemA
IF /I '%Choice%'=='T' goto ItemB
IF /I '%Choice%'=='R' goto ItemC

IF NOT '%Choice%'=='X' goto Err1
IF NOT '%Choice%'=='A' goto Err1
IF NOT '%Choice%'=='H' goto Err1
IF NOT '%Choice%'=='C' goto Err1
IF NOT '%Choice%'=='E' goto Err1
IF NOT '%Choice%'=='T' goto Err1
IF NOT '%Choice%'=='R' goto Err1

:ItemA
echo.
echo Please wait...
if exist flasher.vbs del "flasher.vbs"
start /wait mortrun.exe -eu.mscr
if exist flasher.vbs start /wait flasher.vbs
if exist flasher.vbs taskkill /f /im "mtty1.42.exe"
goto start

:ItemB
echo.
echo Please wait...
if exist flasher.vbs del "flasher.vbs"
start /wait mortrun.exe -tmous.mscr
if exist flasher.vbs start /wait flasher.vbs
if exist flasher.vbs taskkill /f /im "mtty1.42.exe"
goto start

:ItemC
echo.
IF NOT exist flasher.vbs echo No old Partition Table found
IF NOT exist flasher.vbs pause
if exist flasher.vbs echo Please wait...
if exist flasher.vbs start /wait flasher.vbs
if exist flasher.vbs taskkill /f /im "mtty1.42.exe"
goto start

:Changelog
cls
echo -------------------------------------------------------------------------------
echo l              PARTITION WIZARD v1.20 BY ALI BEYAZ (AKA SYMBUZZER)            l
echo l                      http:\\androidforum.tytung.com                         l
echo -------------------------------------------------------------------------------
echo.
echo CHANGE LOG:
echo.
echo v1.20
echo - improved general speed and stability
echo - added checking phone connection feature
echo - attempting to fix mtty startup problem
echo - added use last Partition Table feature
echo - fixed invalid commands actions
echo - changed color scheme
echo - codes cleaned
echo.
echo v1.11
echo - fixed remained size calculation
echo - fixed some strings
echo - fixed userdata flag
echo.
echo v1.10
echo - added use and dont use last 24mb option
echo - added changelog menu
echo - fixed some strings
echo.
echo v1.00
echo - Initial release
echo.
pause
goto Start

:Help
cls
echo -------------------------------------------------------------------------------
echo l              PARTITION WIZARD v1.20 BY ALI BEYAZ (AKA SYMBUZZER)            l
echo l                      http:\\androidforum.tytung.com                         l
echo -------------------------------------------------------------------------------
echo.
echo - You need to mtty specific WinCE drivers on your PC for using this tool.
echo - !!! Highly recommended to use aMagldr 1.13.07 or above !!!
echo - If you find bugs or have suggestions, please write them on WebSite above.
echo.
pause
goto Start

:About
cls
echo -------------------------------------------------------------------------------
echo l              PARTITION WIZARD v1.20 BY ALI BEYAZ (AKA SYMBUZZER)            l
echo l                      http:\\androidforum.tytung.com                         l
echo -------------------------------------------------------------------------------
echo.
echo Thanks to 
echo  - Cotulla for his great aMagldr
echo  - Tytung for his forum
echo  - RobbieP for his helps for spl
echo  - ? for mtty tool
echo  - Mirko Schenk for MortScript
echo.
pause
goto Start

:Err1
goto Start

:Exit
exit