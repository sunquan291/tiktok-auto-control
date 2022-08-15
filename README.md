# tiktok-auto-control
https://www.toutiao.com/article/7107911086158037537/

## 前言
本工程主要是介绍了通过adb命名结合bat脚本，自动控制手机，进行抖音刷红包和抢购类的动作

## 实践
具体的实施步骤很简单，只需三步：

1、下载安装adb工具包，http://www.downcc.com/soft/21006.html，一路Nex，最后命令行能adb device不报错，即为成功

2、编写shell脚本

3、执行

```bash
@echo offfor %%I in (A,B,C)^
do(  
	adb shell input tap 880 1391  
	echo start：%time%  
	ping 1.1.1.1 -n 1 -w 20000 > nul  
	echo end：%time%  
	adb shell input keyevent 4
)
pause
```

2行表示循环3次，当然也有其它写法
4行表示点击坐标(880,1391)
6行利用ping命令模拟等待延长20S
8行表示触发返回按键

## 其它
adb当然不仅仅支持上面的几条命令

例如滑动：

adb shell input swipe 784 1336 784 191 5000

表示5秒内将屏幕从(784,1336)到（784，191）

打开QQ应用：

adb shell am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -n com.tencent.mobileqq/com.tencent.mobileqq.activity.SplashActivity

# 问题反馈：

http://blog.csdn.net/sunquan291
