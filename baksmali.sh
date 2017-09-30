#!/system/bin/sh
#export LD_LIBRARY_PATH=/data/data/per.pqy.apktool/lix
cd /data/data/per.pqy.apktool
/data/data/per.pqy.apktool/lix/jvm/java-7-openjdk-armhf/jre/bin/java -jar /data/data/per.pqy.apktool/mydata/baksmali-1.4.2.jar -d /system/framework "$@" && echo "OK!"
