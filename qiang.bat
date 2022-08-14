@echo off
adb connect 192.168.2.12
for /l %%i in (1,1,400)^
do (
  adb shell input tap 818 2310
  ping 1.1.1.1 -n 1 -w 200 > nul
  adb shell input tap 930 2269
  echo = %time%
)
pause
