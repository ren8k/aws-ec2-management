@echo off
setlocal enabledelayedexpansion
cd %~dp0

set INSTANCE_ID="i-XXXXXXXXXXXXXXXXX"

aws ec2 start-instances --instance-ids %INSTANCE_ID%
echo start ec2 %INSTANCE_ID%
echo Please press the Enter key to exit the program.
pause >nul
