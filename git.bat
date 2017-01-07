@echo off
setlocal enabledelayedexpansion

set args=%*
set args=!args:C:=/mnt/c!

@echo on
C:\Windows\Sysnative\bash.exe -c "git %args%"
