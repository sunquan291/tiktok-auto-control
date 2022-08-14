@echo off
for %%I in (A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C,A,B,C)^
do (
  adb shell input tap 880 1391
  echo b===: %time%
  ping 1.1.1.1 -n 1 -w 25000 > nul
  echo e===: %time%
  adb shell input keyevent 4
  ping 1.1.1.1 -n 1 -w 2000 > nul
)
pause
