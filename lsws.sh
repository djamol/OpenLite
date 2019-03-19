SCRIPTPATH=$(dirname "$SCRIPT")
mkdir src
SRC_Source= $SCRIPTPATH/src

PWD_DIR=$SCRIPTPATH
dbpass=admin
cpu_num=`cat /proc/cpuinfo | grep processor | wc -l`

 sh $SCRIPTPATH/shell/jemalloc.sh 2>&1 | tee -a openl-jemalloc.txt
 sh $SCRIPTPATH/shell/openlite.sh 2>&1 | tee -a openl-openlite.txt
 sh $SCRIPTPATH/shell/nginx.sh 2>&1 | tee -a openl-jemalloc.txt
 sh $SCRIPTPATH/shell/php.sh 2>&1 | tee -a openl-php.txt
 sh $SCRIPTPATH/shell/ext-php-redis.sh 2>&1 | tee -a openl-redis.txt
 sh $SCRIPTPATH/shell/ext-php-mem.sh 2>&1 | tee -a openl-mem.txt
 sh $SCRIPTPATH/shell/ext-php-zendOPcache.sh 2>&1 | tee -a openl-zendOPcache.txt
sh $SCRIPTPATH/shell/end.sh 2>&1 | tee -a openl-end.txt
