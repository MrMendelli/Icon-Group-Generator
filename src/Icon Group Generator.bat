@echo off

title Icon Group Generator
mode con cols=60 lines=9

if exist "%*" goto :convert
if not exist "%*" goto :error

:convert
cls
color 0a
echo Processing...
"%~dp0convert.exe" %* -scale 256 "%temp%\%~n1 x256.png"
"%~dp0convert.exe" %* -scale 128 "%temp%\%~n1 x128.png"
"%~dp0convert.exe" %* -scale 96 "%temp%\%~n1 x96.png"
"%~dp0convert.exe" %* -scale 64 "%temp%\%~n1 x64.png"
"%~dp0convert.exe" %* -scale 48 "%temp%\%~n1 x48.png"
"%~dp0convert.exe" %* -scale 32 "%temp%\%~n1 x32.png"
"%~dp0convert.exe" %* -scale 24 "%temp%\%~n1 x24.png"
"%~dp0convert.exe" %* -scale 16 "%temp%\%~n1 x16.png"
"%~dp0convert.exe" "%temp%\%~n1 x256.png" "%temp%\%~n1 x128.png" "%temp%\%~n1 x96.png" "%temp%\%~n1 x64.png" "%temp%\%~n1 x48.png" "%temp%\%~n1 x32.png" "%temp%\%~n1 x24.png" "%temp%\%~n1 x16.png" "%~n1.ico" > nul
goto :eof

:error
cls
color 0c
echo Error. An infile must be sullpied to use this converter!
pause > nul
goto :eof