@echo off
color 1F
echo.

C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy RemoteSigned -File "bootstrap.ps1"

:EOF

REM echo Waiting seconds
REM timeout /t 10 /nobreak > NUL

echo All done! Press any key to exit.
pause > NUL

