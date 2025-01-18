@echo off
setlocal enabledelayedexpansion
cd %~dp0

set INSTANCE_ID="i-XXXXXXXXXXXXXXXXX"

aws ec2 stop-instances --instance-ids %INSTANCE_ID%
echo stop ec2 %INSTANCE_ID%
echo Please press the Enter key to exit the program.
pause >nul
