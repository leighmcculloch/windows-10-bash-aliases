@echo off
setlocal enabledelayedexpansion

set args=%*
if not "%1"=="" set args=!args:C:=/mnt/c!

set bashexe=bash.exe
if %PROCESSOR_ARCHITECTURE%==x86 (
	set bashexe=%windir%\Sysnative\bash.exe
)

@echo on
%bashexe% -c "ssh %args%"
