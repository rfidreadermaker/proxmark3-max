@echo off
MODE CON COLS=100 lines=35
title  PM3命令行操作窗口
cd "%~dp0client"
echo 手动指定端口刷固件第一步BOOT，如果刷一半端口变了关了重开输入新端口

color B
set num=
set /p num=  查看【设备管理器-端口-Proxmark3】的串口号(例如COM5则只需要输入"5"):

proxmark3.exe com%num% --flash --unlock-bootloader --image bootrom.elf --force
pause.