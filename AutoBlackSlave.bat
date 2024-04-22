@echo off
chcp 65001
set password=123
start cmd /k C:\Users\Public\Desktop\Yunnote.lnk
start cmd /k wsl -d Ubuntu-22.04
timeout /nobreak /t 15
cls
echo.
echo.
echo 记得开AutoSave！！！！！
echo.
echo.
ssh -X red_edge@172.24.223.210 "export DISPLAY=:0 && cd LabelRoboMaster/build && ./LabelRoboMaster"
cls
echo.
echo.
echo.
echo.
echo 别忘了，您的黑奴生活还没有结束哦~
echo.
echo.
echo.
wsl --shutdown
Taskkill /F /IM 有道云笔记.exe /T
timeout /nobreak /t 3
Taskkill /f /im cmd.exe
exit