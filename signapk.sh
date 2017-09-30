#!/system/bin/sh
#export LD_LIBRARY_PATH=/data/data/per.pqy.apktool/lix
/data/data/per.pqy.apktool/lix/jvm/java-7-openjdk-armhf/jre/bin/java -jar /data/data/per.pqy.apktool/mydata/signapk.jar /data/data/per.pqy.apktool/mydata/x509 /data/data/per.pqy.apktool/mydata/pk8 "$@" && echo "OK!"

