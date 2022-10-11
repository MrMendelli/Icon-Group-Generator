@echo off

title Icon Group Generator
mode con cols=60 lines=9

:CheckBin
if exist "%~dp0convert.exe" goto :CheckInfile
cls & title Error! & color 0c & echo.
set /p choice="convert.exe not found! Download now? "
if /i "%choice%" equ "Y" goto :DownloadImageMagic
if /i "%choice%" equ "N" exit /b
cls & echo.
echo You must enter 'y' or 'n' to proceed... & pause > nul
goto :CheckBin

:DownloadImageMagic
start https://imagemagick.org/script/download.php#windows
exit /b

:CheckInfile
if "%~nx1" neq "" goto :ConvertInfile
cls & title Error! & color 0c
echo. & echo You must supply an infile... & pause > nul
exit /b

:ConvertInfile
cls & color 0a
echo. & echo Converting %~nx1...
"%~dp0convert.exe" %* -scale 256 "%temp%\%~n1 x256.png"
"%~dp0convert.exe" %* -scale 128 "%temp%\%~n1 x128.png"
"%~dp0convert.exe" %* -scale 96 "%temp%\%~n1 x96.png"
"%~dp0convert.exe" %* -scale 64 "%temp%\%~n1 x64.png"
"%~dp0convert.exe" %* -scale 48 "%temp%\%~n1 x48.png"
"%~dp0convert.exe" %* -scale 32 "%temp%\%~n1 x32.png"
"%~dp0convert.exe" %* -scale 24 "%temp%\%~n1 x24.png"
"%~dp0convert.exe" %* -scale 16 "%temp%\%~n1 x16.png"
"%~dp0convert.exe" "%temp%\%~n1 x256.png" "%temp%\%~n1 x128.png" "%temp%\%~n1 x96.png" "%temp%\%~n1 x64.png" "%temp%\%~n1 x48.png" "%temp%\%~n1 x32.png" "%temp%\%~n1 x24.png" "%temp%\%~n1 x16.png" "%~n1.ico" > nul
exit /b