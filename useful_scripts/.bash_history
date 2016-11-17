ls -al
ls -la
more 
more /etc/sysctl.conf
more /proc/sys/vm/swappiness 
echo vm.swappiness=10 >> /etc/sysctl.conf
sudo echo vm.swappiness=10 >> /etc/sysctl.conf
sudo su -
ls -la
ifconfig
exir
exit
ls
ls -la
exit
ls -la
yum -y install mariadb-server mariadb
sudo su -
mysql
ps -ef|grep mysql
mysql -version
mysql 
ssh 35.160.115.173
cd
ls -al
cd .ssh/
ls -la
more known_hosts 
more authorized_keys 
cd
ls -la
ssh -i smuelleraccenturecom.pem ec2-user@35.160.115.173
chmod 600 smuelleraccenturecom.pem 
ssh -i smuelleraccenturecom.pem ec2-user@35.160.115.173
pwd
ls -al
touch 001_MasterNode
ls -al
ls
ls -la
man scp
man ssh
vi all_nodes.txt
nslookup 
ifconfig
vi all_nodes.txt
ls -la
ls
echo $IP
echo $IPADDRESS
echo $HOSTNAME
vi all_nodes.txt 
ls -la
more all_nodes.txt 
ping 35.163.72.61
ssh -i smuelleraccenturecom.pem ec2-user@35.160.115.173 "touch 002_NODE"
ssh -i smuelleraccenturecom.pem ec2-user@35.160.115.173 
vi all_nodes.txt 
ssh -i smuelleraccenturecom.pem ec2-user@35.163.143.146 "touch 003_NODE"
ssh -i smuelleraccenturecom.pem ec2-user@35.163.143.146 
vi all_nodes.txt 
ssh -i smuelleraccenturecom.pem ec2-user@35.163.121.231 "touch 003_NODE"
ssh -i smuelleraccenturecom.pem ec2-user@35.163.121.231 "ifconfig"
ssh -i smuelleraccenturecom.pem ec2-user@35.163.121.231 
vi all_nodes.txt 
ssh -i smuelleraccenturecom.pem ec2-user@35.163.87.32
vi all_nodes.txt 
ssh -i smuelleraccenturecom.pem ec2-user@35.163.72.61
ifconfig
vi all_nodes.txt 
cat all_nodes.txt 
ls -la
ssh -i smuelleraccenturecom.pem 35.163.72.61
more all_nodes.txt 
ls -la
ifconfig
ls -la
mysql
sudo su -
scp -i smuelleraccenturecom.pem  /etc/my.cnf   35.160.115.173:my.cnf
exit
more all_nodes.txt 
ls -la
vi /etc/my.cnf
sudo su -
ls -la
more  n1.sh 
more n2.sh 
ls -la
mv n1.sh n002.sh
mv n2.sh n003.sh
mv n3.sh n004.sh
mv n4.sh n005.sh
ls -la
mysql -u root -p 
GRANT REPLICATION SLAVE ON *.* TO 'root'@'ec2-35-160-115-173.us-west-2.compute.amazonaws.com' IDENTIFIED BY 'xxxxxx';
    SET GLOBAL binlog_format = 'ROW';
    FLUSH TABLES WITH READ LOCK;
mysql -u root -p 
ssh ec2-35-160-115-173.us-west-2.compute.amazonaws.com
ssh -i smuelleraccenturecom.pem ec2-35-160-115-173.us-west-2.compute.amazonaws.com
exit
mysql -u root -p 
cp all_nodes.txt n2.sh
vi n2
vi n2.sh 
cp n2.sh n3.sh
cp n2.sh n4.sh
cp n2.sh ma.sh
vi ma.sh 
vi n2.sh 
cp n2.sh n1.sh
vi n1.sh 
vi n2.sh 
vi n3.sh 
vi n4.sh 
chmod +x n*.sh
n2
ls -la
n2.sh
sh n2.sh
ls -la
more all_nodes.txt 
ls -la
more all_nodes.txt 
sh n1.sh
ls 
echo "alias mys=mysql -u root -p" >> .alias
. pro
, .pro
. .profile
ls -la
vi .bashrc 
. .bashrc 
vi .alias 
. .bashrc 
vi .alias 
alias mys=´mysql -u root -p´
alias mys=´mysq´
mys
alias mys=mysql
mys
alias mys="mysql -u root -p"
mys
vi .alias 
mys
vi .alias 
mys
man mysql
vi .alias 
mysql --help
mysql --helpmore
mysql --help|more
vi .alias 
mys
. .bashrc 
mys
n002.sh
./n002.sh
ls -la
mysqldump --all-databases --allow-keywords --single-transaction --flush-logs --master-data=2 -r /root/mysqldump.sql
sudo su
sudo su 
vi .bashrc 
. .bashrc 
c002.sh mysqldump.sql 
n002.sh 
ls -al
more  /var/log/mysqld.log 
sudo su
ls -la
ps -ef
sudo service cloudera-scm-server start
sudo su
sudo su -
sudu su -
sudo su -
ls -la
n002.sh "sudo echo vm.swappiness=1 >> /etc/sysctl.conf"
ls -la
more n002.sh 
cp n002.sh e002.sh
cp n003.sh e003.sh
cp n004.sh e004.sh
cp n005.sh e005.sh
vi e00*
more e00*
ls -la
./e002.sh "sudo echo vm.swappiness=1 >> /etc/sysctl.conf"
./e002.sh "ls"
./e002.sh "sudo echo vm.swappiness=1 >> /etc/sysctl.conf"
n002.sh
./e002.sh "sudo su -;echo vm.swappiness=1 >> /etc/sysctl.conf"
./e002.sh "sudo su;echo vm.swappiness=1 >> /etc/sysctl.conf"
./e002.sh "sudo su"
n002.sh
ls -la
n003.sh 
ls -la
n004.sh 
n005.sh 
ls -la
more all_nodes.txt 
ls -la
ps -ef
ls -la
p -ef
ps -ef
sudo su -
mysql -u root -p
n002.sh 
ls -la
sudo su -
id
n002.sh 
n003.sh 
n004.sh 
n005.sh 
more n001.sh
pwd
ls -la
n002.sh 
more n002.sh
sudo su
ssh 172.31.8.164
cd /var/lib/
ls ö
ls -l
ssh 172.31.8.162
ls /var/lib/ -l
cd /var/lib/zookeeper/
ls 
ls -l
ssh 172.31.8.162
ssh -i ~ec2-user/smuelleraccenturecom.pem 172.31.8.162
pwd
cd ..
ls -la
pwd
sudo cd /var/lib/ && sudo rm -rf hadoop-* hbase hive impala llama oozie sentry solr spark sqoop sqoop2 zookeeper
cd
ls
n002.sh 
n003.sh 
n004.sh 
n005.sh 
e002.sh "ls -al /var/lib"
ls -al /var/lib/
n002.sh 
n003.sh 
n002.sh 
cd /var/lib
sudo cd /var/lib/ && sudo rm -rf hadoop-* hbase hive impala llama oozie sentry solr spark sqoop sqoop2 zookeeper flume-ng
ls -la
cd
n004.sh 
n005.sh 
ls
more all_nodes.txt 
mysql -u root -p
pwd
mysql -u root -p
ls -la
c002.sh mysql-connector-java-5.1.40.tar.gz 
more c002.sh
cp n003sh c003.sh
cp n003.sh c003.sh
cp n004.sh c004.sh
cp n005.sh c005.sh
vi c003.sh 
vi c004.sh 
vi c005.sh 
ls -la
c003.sh mysql-connector-java-5.1.40.tar.gz 
c004.sh mysql-connector-java-5.1.40.tar.gz 
c005.sh mysql-connector-java-5.1.40.tar.gz 
n003.sh 
n004.sh 
n005.sh 
ls -al
n002.sh 
ls -la
mys
c005.sh mysql-connector-java-5.1.40.tar.gz 
nslookup 
ls -al
more all_nodes.txt 
mys
ls -la
more all_nodes.txt 
ls -la
sudo su
ls -la
man grep
grep "[ensl|destr]" /etc/passwd
grep "(ensl|destr)" /etc/passwd
grep "{ensl|destr}" /etc/passwd
grep "{spark|destr}" /etc/passwd
grep "spark|destr" /etc/passwd
grep -e "spark|destr" /etc/passwd
grep -e "[spark|destr]" /etc/passwd
grep -e "[(spark)|destr]" /etc/passwd
grep -e "[(spark)|(destr)]" /etc/passwd
grep -e "(spark)|(destr" /etc/passwd
man grep
sudo yum search mysql
sudo yum search mysql.5.6
sudo yum search mysql_5.6
ls -la
more n002.sh 
cd /var/lib/
ls -la
exit
