@echo off
for %%I in (A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C)^
do (
  adb shell input tap 916 1822
  ping 1.1.1.1 -n 1 -w 2000 > nul
  adb shell input swipe 784 1336 784 191 500
  echo = %time%
  ping 1.1.1.1 -n 1 -w 12000 > nul
  echo = %time%
  adb shell input keyevent 4
  ping 1.1.1.1 -n 1 -w 2000 > nul
)
pause
