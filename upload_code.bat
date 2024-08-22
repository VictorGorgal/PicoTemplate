@echo off

REM Find the correct .uf2 file and store it in a variable
for %%A IN (./build/*.uf2) DO (
    set "UF2_FILE=%%~nxA"
)

REM Check if the variable is set (i.e., a file was found)
if defined UF2_FILE (
    echo Found file: %UF2_FILE%
    
    REM Run the picotool commands with the found file
    picotool reboot -f -u
    timeout 2
    picotool load -u "./build/%UF2_FILE%"
    picotool reboot
    timeout 4
) else (
    echo No .uf2 file found in the build folder.
)
