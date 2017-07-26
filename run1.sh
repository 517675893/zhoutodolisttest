#£¡/bin/sh
cd todolisttest
ant clean debug
cd ..
echo "start to install source apk"
adb install todolist/bin/todolist-debug.apk
echo "start to install test apk"
adb install todolisttest/bin/todolistTest-debug.apk
echo "start to run test"
adb shell am instrument -w com.example.todolist.test/com.example.todolist.test.runners.Runner1