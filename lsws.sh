#SCRIPTPATH=$(dirname "$SCRIPT")
##SRC_Source="/src"
SCRIPTPATH=$(pwd)

PWD_DIR=$SCRIPTPATH
mkdir $SCRIPTPATH/src
dbpass=admin
cpu_num=`cat /proc/cpuinfo | grep processor | wc -l`

BUILD=log.txt
yum install bzip2 gcc -y

if yum -y groupinstall "Development Tools"; then 
echo -e "\033[33;32m yum -y groupinstall ----Development Tools Success ";date +"%r" >> $BUILD;echo "Success : Development Tools Install" >> $BUILD
else
echo -e "\033[33;31m yum -y groupinstall ----Development Tools Failed";date +"%r" >> $BUILD;echo "Failed : Development Tools Install" >> $BUILD
fi
if yum -y install sudo; then 
echo -e "\033[33;32m Sudo Success";date +"%r" >> $BUILD;echo "Success : Sudo Install" >> $BUILD
else
echo -e "\033[33;31m Sudo Failed";date +"%r" >> $BUILD;echo "Failed : Sudo Install" >> $BUILD
fi

if yum -y install perl; then 
echo -e "\033[33;32m perl Success";date +"%r" >> $BUILD;echo "Success : Perl Install" >> $BUILD
else
echo -e "\033[33;31m perl Failed";date +"%r" >> $BUILD;yum -y install perl;echo "Failed : Perl Install" >> $BUILD
fi
if yum -y install libxml2-devel; then 
echo -e "\033[33;32m libxml2 Success";date +"%r" >> $BUILD;echo "Success : libxml2 devel Install" >> $BUILD
else
echo -e "\033[33;31m libxml2 Failed";date +"%r" >> $BUILD;echo "Failed : libxml2 devel Install" >> $BUILD
fi
if yum -y install bzip2-devel; then 
echo -e "\033[33;32m bzip2 Success";date +"%r" >> $BUILD;echo "Success : bzip devel Install" >> $BUILD
else
echo -e "\033[33;31m bzip2 Failed";date +"%r" >> $BUILD;echo "Failed : bzip devel Install" >> $BUILD
fi
if yum -y install gmp-devel; then 
echo -e "\033[33;32m gmp Success";date +"%r" >> $BUILD;echo "Success : gmp devel Install" >> $BUILD
else
echo -e "\033[33;31m gmp Failed";date +"%r" >> $BUILD;echo "Failed : gmp devel Install" >> $BUILD
fi
if yum -y install aspell-devel; then 
echo -e "\033[33;32m aspell Success";date +"%r" >> $BUILD;echo "Success : aspell devel Install" >> $BUILD
else
echo -e "\033[33;31m aspell Failed";date +"%r" >> $BUILD;echo "Failed : aspell devel Install" >> $BUILD
fi
if yum -y install recode-devel; then 
echo -e "\033[33;32m recode Success";date +"%r" >> $BUILD;echo "Success : recode devel Install" >> $BUILD
else
echo -e "\033[33;31m recode Failed";date +"%r" >> $BUILD;echo "Failed : recode devel Install" >> $BUILD
fi
if yum -y install libjpeg-devel; then 
echo -e "\033[33;32m libjpeg Success";date +"%r" >> $BUILD;echo "Success : libjpeg devel Install" >> $BUILD
else
echo -e "\033[33;31m libjpeg Failed";date +"%r" >> $BUILD;echo "Failed : libjpeg devel Install" >> $BUILD
fi
if yum -y install libpng-devel; then 
echo -e "\033[33;32m libpng Success";date +"%r" >> $BUILD;echo "Success : libpng devel Install" >> $BUILD
else
echo -e "\033[33;31m libpng Failed";date +"%r" >> $BUILD;echo "Failed : libpng devel Install" >> $BUILD
fi
if yum -y install libXpm-devel; then 
echo -e "\033[33;32m libxpm Success";date +"%r" >> $BUILD;echo "Success : libxpm devel Install" >> $BUILD
else
echo -e "\033[33;31m libxpm Failed";date +"%r" >> $BUILD;echo "Failed : libXpm devel Install" >> $BUILD
fi
if yum -y install freetype-devel; then 
echo -e "\033[33;32m freetype Success";date +"%r" >> $BUILD;echo "Success : freetype devel Install" >> $BUILD
else
echo -e "\033[33;31m freetype Failed";date +"%r" >> $BUILD;echo "Failed : freetype devel Install" >> $BUILD
fi
if yum -y install libicu-devel; then 
echo -e "\033[33;32m libicu Success";date +"%r" >> $BUILD;echo "Success : libicu devel Install" >> $BUILD
else
echo -e "\033[33;31m libicu Failed";date +"%r" >> $BUILD;echo "Failed : libicu devel Install" >> $BUILD
fi
if yum -y install libmcrypt-devel; then 
echo -e "\033[33;32m libmcrypt Success";date +"%r" >> $BUILD;echo "Success : libmcrypt devel Install" >> $BUILD
else
echo -e "\033[33;31m libmcrypt Failed";date +"%r" >> $BUILD;echo "Failed : libmcrypt devel Install" >> $BUILD
fi




 sh $SCRIPTPATH/shell/jemalloc.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-jemalloc.txt
 sh $SCRIPTPATH/shell/openlite.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-openlite.txt
 sh $SCRIPTPATH/shell/nginx.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-nginx.txt
 sh $SCRIPTPATH/shell/php.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-php.txt
 sh $SCRIPTPATH/shell/ext-php-redis.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-redis.txt
 sh $SCRIPTPATH/shell/ext-php-mem.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-mem.txt
 sh $SCRIPTPATH/shell/ext-php-zendOPcache.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-zendOPcache.txt
 sh $SCRIPTPATH/shell/maria.sh $SCRIPTPATH $cpu_num $dbpass 2>&1 | tee -a openl-maria.txt
 sh $SCRIPTPATH/shell/ftp.sh $SCRIPTPATH $cpu_num $dbpass 2>&1 | tee -a openl-ftp.txt
sh $SCRIPTPATH/shell/end.sh $SCRIPTPATH $cpu_num 2>&1 | tee -a openl-end.txt
