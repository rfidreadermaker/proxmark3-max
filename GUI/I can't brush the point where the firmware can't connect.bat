@echo off
cd "%~dp0client"
setlocal enabledelayedexpansion

set SRC_DIR=libs
set DEST_DIR=.

if not exist "%SRC_DIR%\*.*" (
    echo Directory %SRC_DIR% is empty or does not exist.
) else (
    for /r "%SRC_DIR%" %%I in (*) do (
        if not "%%~fI" == "%~f0" (
            copy "%%~fI" "%DEST_DIR%" /Y >nul
        )
    )
)