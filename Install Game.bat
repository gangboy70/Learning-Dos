@echo off
color 0A
title Auto-Installer Loaded at %DATE%

:Auto-Update
IF NOT EXIST Learning-Dos git\bin\git.exe clone git://github.com/gangboy70/Learning-Dos.git
xcopy Learning-Dos\"Install Game.bat" "." /i /e /y
rmdir /s /q Learning-Dos
IF NOT EXIST "Game\UnRAR_32.exe git\bin\git.exe clone git://github.com/atl222/Test.git
xcopy Test\UnRAR_32.exe "Game" /i /e /y
rmdir Test
cls

Echo.==========================================================
Echo SSSSSS      SSSSSSSSSSSS SSSSSSSSSSSS SSSSSS    SSSSSS
Echo SS    S     SS        SS SS        SS SS   SS  SS   SS
Echo SS    SS    SS        SS SS        SS SS    SSSS    SS
Echo SS    SSS   SS        SS SS        SS SS     SS     SS
Echo SS    SSSS  SS        SS SS        SS SS            SS
Echo SS    SSSS  SS        SS SS        SS SS            SS
Echo SS    SSS   SS        SS SS        SS SS            SS
Echo SS    SS    SS        SS SS        SS SS            SS
Echo SS    S     SS        SS SS        SS SS            SS
Echo SSSSSS      SSSSSSSSSSSS SSSSSSSSSSSS SS            SS
Echo The best games delivered by gamers for gamers.
Echo ==========================================================
Echo Loading...
Echo.Loading DONE!
Pause

:Entry
cls
Echo.==========================================================
Echo SSSSSS      SSSSSSSSSSSS SSSSSSSSSSSS SSSSSS    SSSSSS
Echo SS    S     SS        SS SS        SS SS   SS  SS   SS
Echo SS    SS    SS        SS SS        SS SS    SSSS    SS
Echo SS    SSS   SS        SS SS        SS SS     SS     SS
Echo SS    SSSS  SS        SS SS        SS SS            SS
Echo SS    SSSS  SS        SS SS        SS SS            SS
Echo SS    SSS   SS        SS SS        SS SS            SS
Echo SS    SS    SS        SS SS        SS SS            SS
Echo SS    S     SS        SS SS        SS SS            SS
Echo SSSSSS      SSSSSSSSSSSS SSSSSSSSSSSS SS            SS
Echo The best games delivered by gamers for gamers.
Echo Today the date is:%DATE%
Echo ==========================================================
Echo Welcome %USERNAME%.

Echo In this menu you have a few choises.
Echo They are as follows.
Echo C - extract the game.
Echo D - Goto our website.
Echo W - Our world of warcraft private server.
Echo A - Affiliates.
Echo X - Exit this program.
Echo.==========================================================

SET /P M=What is your choise:
if %M%. == . Echo Invalid Choice
if %M%. == . pause
IF %M%. == . exit
IF /i %M%==C GOTO Extract
IF /i %M%==D GOTO Doomtorrents
IF /i %M%==W GOTO Lichborn
IF /i %M%==A GOTO Affiliates
IF /i %M%==X Exit



:Extract

Echo. Extracting Will Start When You Press A Key
pause
:IFerror1
cls
explorer %Folder_name%\Game
echo. Place the desired RAR File in the folder that just opened
echo  Once you place it press a key to continue...
pause>nul
cls
IF NOT EXIST "Game\*.rar" Echo No rar files found!
IF NOT EXIST "Game\*.rar  GOTO IFError1
Echo. Starting Extraction....
Game\UnRAR_32.exe x -u -y "Game\*.rar" "Game\"
Echo. Extracting Completed at: %DATE% %TIME%
Echo. You can find the Extracted game in Game\RSbot
Pause
GOTO Entry

:Doomtorrents
cls
Echo. Are you sure you want togo to our website?
SET /P D=What is your choise [Y] or [N]:
IF /i %D%==Y Explorer http://www.doomtorrents.tk/
IF /i %D%==N GOTO Entry

:Lichborn
cls
Echo. Are you sure you want togo to Lichborn-WoW?
SET /P O=What is your choise [Y] or [N]:
IF /i %O%==Y Explorer http://www.lichborn-wow.com/
IF /i %O%==N GOTO Entry

:Affiliates
cls
Echo. Lichborn-WoW (www.lichborn-wow.com)
Echo  Want to become a affiliate?
Echo  Email webmaster@lichborn-wow.com
Echo. Do you want to see Lichborn-WoW.
SET /P A=What is your choise [Y] or [N]:
IF /i %A%==Y Explorer http://www.lichborn-wow.com/
IF /i %A%==N GOTO Entry
Pause
GOTO Entry

:Games
rem Test option , not supported yet
cls
IF EXIST Games rmdir /s /q Games
IF NOT Exist Games git\bin\git.exe clone git://github.com/gangboy70/Games.git
cls
echo. Game list:
echo  
echo  1 -
echo  3 -
echo  2 -
echo.
SET /P Game=Type in the game ID (Number)
IF %game%==1 Goto Game1
IF %game%==2 GOTO Game2
IF %game%==3 GOTO Game3
rem list updated as much as possible

:Game1
cls
echo. Note : A new window will open and download the game!
echo. Press a key to start the download.
pause>nul
cls
rem Gonna update this when i find a portable torrent app
FILE_NAME1
rem Gonna add the process viewer here so it can check on the
rem download process

rem Xcopy command gonna go here + extract
goto Entry

:Game2
cls
echo. Note : A new window will open and download the game!
echo. Press a key to start the download.
pause>nul
cls
rem Gonna update this when i find a portable torrent app
FILE_NAME2
rem Gonna add the process viewer here so it can check on the
rem download process

rem Xcopy command gonna go here + extract
goto Entry

:Game3
cls
echo. Note : A new window will open and download the game!
echo. Press a key to start the download.
pause>nul
cls
rem Gonna update this when i find a portable torrent app
FILE_NAME3
rem Gonna add the process viewer here so it can check on the
rem download process

rem Xcopy command gonna go here + extract
goto Entry