@echo off
for /f %%a in ('wmic PATH Win32_videocontroller get currentrefreshrate^|findstr [0-9]') do SET /A a = %%a
if %a%==60 Qres.exe /r:144
if %a%==144 Qres.exe /r:60