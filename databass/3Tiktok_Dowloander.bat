@echo off
:: Set download folder
set "dlFolder=%USERPROFILE%\Downloads\YT-dlp"

:: Create folder if it doesn't exist
if not exist "%dlFolder%" (
    mkdir "%dlFolder%"
)

:: Check if yt-dlp is available
where yt-dlp >nul 2>nul
if errorlevel 1 (
    echo ❌ yt-dlp is not installed!
    echo Installing yt-dlp using winget...
    echo.

    winget install -e --id yt-dlp.yt-dlp

    echo.
    echo yt-dlp installation attempted. Please reopen the tool if installation was successful.
    pause
    exit /b
)
echo.            
echo [96m[===========================================]
echo.                                                         
echo                    @@@@@               
echo                    @@@@@@              
echo                    @@@@@@@@@           
echo                    @@@@@@@@@@@         
echo             @@@@@@ @@@@5@@@@@@         
echo           @@@@@@@@ @@@@@            
echo         @@@@@@@@@@ @@@@@               
echo         @@@@@@     @@@@@               
echo         @@@@@      @@@@@               
echo         @@@@@@@@@@@@@@@@               
echo          @@@@@@@@@@@@@@                
echo            @@@@@@@@@@                  
                                    
echo.
echo  [96m[===========================================]
echo           [93mYT-dlp         [1mBY - Hajisab
echo  [96m[===========================================][92m
echo.
                      

:: Prompt for video link
set /p link=Enter YouTube video link: 

:: Run yt-dlp and download
echo.
echo Downloading to: %dlFolder%
echo.
yt-dlp "%link%" -P "%dlFolder%"

echo.
echo  Download complete!
echo.
echo download at: %dlFolder%
pause
cd..
start StartDownloader.bat
exit