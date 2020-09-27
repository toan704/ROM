@echo off
cls
COLOR 0B
title Tool Flash ROM Live V620A ByToan704
mode con:cols=70 lines=24

:start
cls
echo.
cecho     {4F}FLASH ROM VSMART LIVE{\n #}
echo.
set /p "b=Enter: "
set "b=%b:"=%"
fastboot --disable-verity --disable-verification flash vbmeta vbmeta9.img
fastboot erase system
fastboot erase boot
fastboot erase vendor
fastboot flash boot boot.img
fastboot flash system system.img
fastboot flash vendor vendor.img
