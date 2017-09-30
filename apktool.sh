#!/system/bin/sh
#export LD_LIBRARY_PATH=/data/data/per.pqy.apktool/lix
cd /data/data/per.pqy.apktool
/data/data/per.pqy.apktool/lix/jvm/java-7-openjdk-armhf/jre/bin/java -Djava.io.tmpdir=/data/data/per.pqy.apktool -jar /data/data/per.pqy.apktool/mydata/apktool.jar "$@"
