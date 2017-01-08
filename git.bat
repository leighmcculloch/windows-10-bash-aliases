@echo off
setlocal enabledelayedexpansion

set bashexe=bash.exe
if %PROCESSOR_ARCHITECTURE%==x86 (
	set bashexe=%windir%\Sysnative\bash.exe
)

%bashexe% -c "git %*"
