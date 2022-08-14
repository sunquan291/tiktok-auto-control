@echo off
for %%I in (A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C)^
do (
  adb shell input tap 916 1822
  ping 1.1.1.1 -n 1 -w 8000 > nul
  
  adb shell input tap 416 1822
  ping 1.1.1.1 -n 1 -w 4000 > nul
  adb shell input keyevent 4
  
  adb shell input tap 916 1822
  ping 1.1.1.1 -n 1 -w 4000 > nul
  adb shell input keyevent 4
  adb shell input tap 416 622
  ping 1.1.1.1 -n 1 -w 4000 > nul
  adb shell input keyevent 4
  adb shell input tap 916 622
  ping 1.1.1.1 -n 1 -w 4000 > nul
  adb shell input keyevent 4
  echo = %time%
  ping 1.1.1.1 -n 1 -w 6000 > nul
  echo = %time%
  adb shell input keyevent 4
  ping 1.1.1.1 -n 1 -w 2000 > nul
)
pause
