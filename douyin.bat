@echo off
for /l %%i in (1,1,200)^
do (
	adb shell input swipe 784 1336 784 191 5000
)
pause
