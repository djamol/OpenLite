#SCRIPTPATH=$(dirname "$SCRIPT")
##SRC_Source="/src"
yum install bzip2 -y
SCRIPTPATH=$(pwd)

PWD_DIR=$SCRIPTPATH
mkdir $SCRIPTPATH/src
dbpass=admin
cpu_num=`cat /proc/cpuinfo | grep processor | wc -l`

 sh $SCRIPTPATH/shell/jemalloc.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-jemalloc.txt
 sh $SCRIPTPATH/shell/openlite.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-openlite.txt
 sh $SCRIPTPATH/shell/nginx.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-nginx.txt
 sh $SCRIPTPATH/shell/php.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-php.txt
 sh $SCRIPTPATH/shell/ext-php-redis.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-redis.txt
 sh $SCRIPTPATH/shell/ext-php-mem.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-mem.txt
 sh $SCRIPTPATH/shell/ext-php-zendOPcache.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-zendOPcache.txt
 sh $SCRIPTPATH/shell/ftp.sh $SCRIPTPATH $cpu_num $dbpass 2>&1 | tee -a openl-ftp.txt
sh $SCRIPTPATH/shell/end.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-end.txt
