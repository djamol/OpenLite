#SCRIPTPATH=$(dirname "$SCRIPT")
##SRC_Source="/src"
yum install bzip2 -y
SCRIPTPATH=$(pwd)

PWD_DIR=$SCRIPTPATH
mkdir $SCRIPTPATH/src
dbpass=admin
cpu_num=`cat /proc/cpuinfo | grep processor | wc -l`

 sh $SCRIPTPATH/inc/openlite/jemalloc.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-jemalloc.txt
 sh $SCRIPTPATH/inc/openlite/openlite.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-openlite.txt
 sh $SCRIPTPATH/inc/openlite/nginx.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-jemalloc.txt
 sh $SCRIPTPATH/inc/openlite/php.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-php.txt
 sh $SCRIPTPATH/inc/openlite/ext-php-redis.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-redis.txt
 sh $SCRIPTPATH/inc/openlite/ext-php-mem.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-mem.txt
 sh $SCRIPTPATH/inc/openlite/ext-php-zendOPcache.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-zendOPcache.txt
 sh $SCRIPTPATH/inc/openlite/ftp.sh $SCRIPTPATH $cpu_num $dbpass 2>&1 | tee -a openl-ftp.txt
sh $SCRIPTPATH/inc/openlite/end.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-end.txt
