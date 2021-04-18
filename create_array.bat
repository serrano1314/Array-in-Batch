@echo off
goto :main

:main
    <nul set /p=%2>temp
    set string_var=%1
    set string_val=%2
    set delim=,
    set /a arr.count=0
    set /a i=0
    for %%g in (temp) do set /a count=%%~zg
    for /l %%g in (0,1,%count%) do (
        set char=!string_val:~%%g,1!

        if %char% equ ","(
            set /a arr.count=%arr.count%+1
        )
    )
    echo %arr.count%
goto :eof
