

   vi /etc/yum.repos.d/cloudera-manager.repo
    
   [root@ip-172-31-8-164 ~]# more /etc/yum.repos.d/cloudera-manager.repo
   [cloudera-manager]# Packages for Cloudera Manager, Version 5, on RedHat or CentOS 7 x86_64name=Cloudera Manager
   baseurl=https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.8.2/
   gpgkey =https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/RPM-GPG-KEY-clouderagpgcheck = 1

   sudo yum install  oracle-j2sdk1.7
   
   sudo yum install cloudera-manager-daemons cloudera-manager-server

   tail -f /var/log/cloudera-scm-server/cloudera-scm-server.log 
