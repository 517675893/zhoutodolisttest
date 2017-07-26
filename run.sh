#!/bin/sh
#define root folder for testauto
testautoRootPath=/mnt/sdcard/testauto
junitReportPath=$testautoRootPath/junit

echo 'delete all screenshots in sdcard'
adb -s $1 shell rm -rf /mnt/sdcard/Robotium-Screenshots/

cd todolisttest
ant clean debug
cd ..

echo "start to install source apk"
adb -s $1 install todolist/bin/todolist-debug.apk
echo "start to install test apk"
adb -s $1 install todolisttest/bin/todolistTest-debug.apk

echo "start to run test"
adb -s $1 shell am instrument -w -e reportDir $junitReportPath -e reportFile junit-report.xml com.example.todolist.test/com.example.todolist.test.runners.Runner1

echo "pull junit report file to PC"
adb -s $1 pull $junitReportPath/junit-report.xml $WORKSPACE

echo "pull screenshots"
adb -s $1 pull /mnt/sdcard/Robotium-Screenshots/ $WORKSPACE/