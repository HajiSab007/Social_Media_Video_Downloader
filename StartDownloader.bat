@echo off
cls 
chcp 65001 >nul
title Multitool
color D
:mane
echo.
echo.
echo                [95m█[95m█[95m█[35m╗   [95m█[95m█[95m█[35m╗[95m█[95m█[35m╗   [95m█[95m█[35m╗[95m█[95m█[35m╗  [95m█[95m█[95m█[95m█[95m█[95m█[95m█[95m█[35m╗[95m█[95m█[35m╗   [95m█[95m█[95m█[95m█[95m█[95m█[95m█[95m█[35m╗ [95m█[95m█[95m█[95m█[95m█[95m█[35m╗  [95m█[95m█[95m█[95m█[95m█[95m█[35m╗ [95m█[95m█[35m╗     
echo                [95m█[95m█[95m█[95m█[35m╗ [95m█[95m█[95m█[95m█[35m║[95m█[95m█[35m║   [95m█[95m█[35m║[95m█[95m█[35m║  [35m╚══[95m█[95m█[35m╔══[35m╝[95m█[95m█[35m║   [35m╚══[95m█[95m█[35m╔══[35m╝[95m█[95m█[35m╔═══[95m█[95m█[35m╗[95m█[95m█[35m╔═══[95m█[95m█[35m╗[95m█[95m█[35m║     
echo                [95m█[95m█[35m╔[95m█[95m█[95m█[95m█[35m╔[95m█[95m█[35m║[95m█[95m█[35m║   [95m█[95m█[35m║[95m█[95m█[35m║     [95m█[95m█[35m║   [95m█[95m█[35m║[95m█[95m█[95m█[95m█[95m█[35m╗[95m█[95m█[35m║   [95m█[95m█[35m║   [95m█[95m█[35m║[95m█[95m█[35m║   [95m█[95m█[35m║[95m█[95m█[35m║     
echo                [95m█[95m█[35m║[35m╚[95m█[95m█[35m╔[35m╝[95m█[95m█[35m║[95m█[95m█[35m║   [95m█[95m█[35m║[95m█[95m█[35m║     [95m█[95m█[35m║   [95m█[95m█[35m║[35m╚════[35m╝[95m█[95m█[35m║   [95m█[95m█[35m║   [95m█[95m█[35m║[95m█[95m█[35m║   [95m█[95m█[35m║[95m█[95m█[35m║     
echo                [95m█[95m█[35m║ [35m╚═[35m╝ [95m█[95m█[35m║[35m╚[95m█[95m█[95m█[95m█[95m█[95m█[35m╔[35m╝[95m█[95m█[95m█[95m█[95m█[95m█[95m█[35m╗[95m█[95m█[35m║   [95m█[95m█[35m║      [95m█[95m█[35m║   [35m╚[95m█[95m█[95m█[95m█[95m█[95m█[35m╔[35m╝[35m╚[95m█[95m█[95m█[95m█[95m█[95m█[35m╔[35m╝[95m█[95m█[95m█[95m█[95m█[95m█[95m█[35m╗
echo                [35m╚═[35m╝     [35m╚═[35m╝ [35m╚═════[35m╝ [35m╚══════[35m╝[35m╚═[35m╝   [35m╚═[35m╝      [35m╚═[35m╝    [35m╚═════[35m╝  [35m╚═════[35m╝ [35m╚══════[35m╝
echo.
echo                                     [97m┌────────────────────────────┐
echo                                     [97m│ [92m1. [97mYouTube    [92m2. [97mSpotify   [97m│
echo                                     [97m│                            [97m│
echo                                     [97m│ [92m3. [97mTikTok     [92m4. [97mFaceBook  [97m│
echo                                     [97m│                            [97m│
echo                                     [97m│ [92m5. [97mInstagram  [92m6.[0m [1mCradits[0m   [97m│
echo                                     [97m│                            [97m│
echo                                     [97m│          [92m7. [91mExit           [97m│
echo                                     [97m└────────────────────────────┘

for /f "tokens=2 delims==" %%u in ('echo %USERNAME%') do set "username=%%u"

<nul set /p "=┌─── (@%username%) "
echo.
<nul set /p "=└─# "
set /p choice=


if %choice%==1 goto YouTube
if %choice%==2 goto Spotify
if %choice%==3 goto TikTok
if %choice%==4 goto FaceBook
if %choice%==5 goto Instaram
if %choice%==6 goto Cradits
if %choice%==7 goto Exit

:YouTube
cd databass
start 1YouTube_Dowloander.bat
exit

:Spotify
cd databass
start 2Spotify_Dowloander.bat
exit

:TikTok
cd databass
start 3Tiktok_Dowloander.bat
exit

:FaceBook 
cd databass
start 4Facebook_Dowloander.bat
exit

:Instaram 
cd databass
start 5Instagram_Dowloander.bat
cls
exit

:Cradits 
cls
echo                                     ┌──────────────────────────────┐
echo                                     │  Cradits      Hajisab        │
echo                                     │                              │
echo                                     │  Contact      @Hajisab_Robot │
echo                                     │                              │
echo                                     │   (Contact us at Telegram)   │
echo                                     └──────────────────────────────┘
pause
cls
goto mane   
:Exit
POWERSHELL.EXE -Command "Add-Type -AssemblyName System.Windows.Forms; [void] [System.Windows.Forms.Messagebox]::Show( 'Good BY!', 'Multitool', 'ok', 'Warning' )"
exit		 
