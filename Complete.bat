set AIpath=C:\bat\AI
@echo off
setlocal ENABLEEXTENSIONS
set text= %1%
IF %text%h EQU h GOTO ai
%AIpath%\nircmd clipboard set %text%
:ai
python %AIpath%\ai3.py
