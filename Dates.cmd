@echo off
for /F "tokens=1-4 delims=/ " %%A in ('date /t') do (
 set DateDay=%%A
 set DateMonth=%%B
 set DateYear=%%C
)
set CurrentDate=%DateYear%%DateMonth%%DateDay%
rem echo %DateDay%
rem echo %DateMonth%
rem echo %DateYear%
rem echo %CurrentDate%
