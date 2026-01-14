@echo off
echo Stopping MySQL service...
taskkill /F /IM mysqld.exe
net stop mysql

echo Waiting for shutdown...
timeout /t 5

echo Starting MySQL in Password Reset Mode...
start /b "" "C:\xampp\mysql\bin\mysqld.exe" --defaults-file="C:\xampp\mysql\bin\my.ini" --init-file="C:\Users\harsh\Desktop\food-waste-management-system\reset_pass.sql" --console

echo Waiting for password reset...
timeout /t 10

echo Stopping Temporary MySQL..
taskkill /F /IM mysqld.exe

echo Restarting MySQL Normally...
start "" "C:\xampp\mysql_start.bat"

echo Database Password Reset Complete!
pause
