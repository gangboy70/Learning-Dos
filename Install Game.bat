@echo off
color 0A
title Auto-Installer.

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
GOTO Entry

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
Echo Today the date is:%DATE% %TIME%
Echo ==========================================================
Echo Welcome %USERNAME%.

Echo In this menu you have a few choises.
Echo They are as follows.
Echo C - extract the game.
Echo D - Goto our website.
Echo W - Our world of warcraft private server.
Echo A - Affiliates.
Echo E - Credits
Echo X - Exit this program.
Echo.==========================================================

SET /P M=What is your choise:

IF /i %M%==* Exit
IF /i %M%==C GOTO Extract
IF /i %M%==D GOTO Doomtorrents
IF /i %M%==W GOTO Lichborn
IF /i %M%==A GOTO Affiliates
IF /i %M%==X Exit


:Extract

Echo. Extracting Will Start When You Press A Key
pause
cls
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











