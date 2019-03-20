<<<<<<< HEAD
#SCRIPTPATH=$(dirname "$SCRIPT")
##SRC_Source="/src"
yum install bzip2 -y
SCRIPTPATH=$(pwd)
=======
SCRIPTPATH=$(dirname "$SCRIPT")
mkdir src
SRC_Source= $SCRIPTPATH/src
>>>>>>> 55fa5f6be85293c7ef2cccb610099b3d359d0cd1

PWD_DIR=$SCRIPTPATH
mkdir $SCRIPTPATH/src
dbpass=admin
cpu_num=`cat /proc/cpuinfo | grep processor | wc -l`

<<<<<<< HEAD
 sh $SCRIPTPATH/inc/openlite/jemalloc.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-jemalloc.txt
 sh $SCRIPTPATH/inc/openlite/openlite.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-openlite.txt
 sh $SCRIPTPATH/inc/openlite/nginx.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-nginx.txt
 sh $SCRIPTPATH/inc/openlite/php.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-php.txt
 sh $SCRIPTPATH/inc/openlite/ext-php-redis.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-redis.txt
 sh $SCRIPTPATH/inc/openlite/ext-php-mem.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-mem.txt
 sh $SCRIPTPATH/inc/openlite/ext-php-zendOPcache.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-zendOPcache.txt
 sh $SCRIPTPATH/inc/openlite/ftp.sh $SCRIPTPATH $cpu_num $dbpass 2>&1 | tee -a openl-ftp.txt
sh $SCRIPTPATH/inc/openlite/end.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-end.txt
=======
 sh $SCRIPTPATH/shell/jemalloc.sh 2>&1 | tee -a openl-jemalloc.txt
 sh $SCRIPTPATH/shell/openlite.sh 2>&1 | tee -a openl-openlite.txt
 sh $SCRIPTPATH/shell/nginx.sh 2>&1 | tee -a openl-jemalloc.txt
 sh $SCRIPTPATH/shell/php.sh 2>&1 | tee -a openl-php.txt
 sh $SCRIPTPATH/shell/ext-php-redis.sh 2>&1 | tee -a openl-redis.txt
 sh $SCRIPTPATH/shell/ext-php-mem.sh 2>&1 | tee -a openl-mem.txt
 sh $SCRIPTPATH/shell/ext-php-zendOPcache.sh 2>&1 | tee -a openl-zendOPcache.txt
sh $SCRIPTPATH/shell/end.sh 2>&1 | tee -a openl-end.txt
>>>>>>> 55fa5f6be85293c7ef2cccb610099b3d359d0cd1
