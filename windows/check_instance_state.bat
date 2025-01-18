@echo off
setlocal enabledelayedexpansion
cd %~dp0

set INSTANCE_ID="i-XXXXXXXXXXXXXXXXX"

aws ec2 describe-instances --instance-ids %INSTANCE_ID% --query "Reservations[*].Instances[*].[InstanceId, State.Name]" --output text
@REM aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId, State.Name]" --output text
echo Please press the Enter key to exit the program.
pause >nul
