    wget "https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/cloudera-manager.repo"

    cp cloudera-manager.repo /etc/yum.repos.d/

    vi /etc/yum.repos.d/cloudera-manager.repo
    
    [root@ip-172-31-8-164 ~]# more /etc/yum.repos.d/cloudera-manager.repo
    [cloudera-manager]# Packages for Cloudera Manager, Version 5, on RedHat or CentOS 7 x86_64name=Cloudera Manager
    baseurl=https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/5.8.2/
    gpgkey =https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/RPM-GPG-KEY-clouderagpgcheck = 1

    sudo yum install  oracle-j2sdk1.7
   
    sudo yum install cloudera-manager-daemons cloudera-manager-server

    [root@ip-172-31-8-164 ~]
    # /usr/share/cmf/schema/scm_prepare_database.sh -u root -p  mysql scm scm 'scm_password'
    Enter database password:
    JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
    Verifying that we can write to /etc/cloudera-scm-server
    Creating SCM configuration file in /etc/cloudera-scm-server
    Executing:  /usr/java/jdk1.7.0_67-cloudera/bin/java 
               -cp /usr/share/java/mysql-connector-java.jar:
                   /usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/
    * com.cloudera.enterprise.dbutil.DbCommandExecutor 
     /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
    [                          main] DbCommandExecutor
    INFO  Successfully connected to database.   All done, your SCM database is configured correctly!


    [root@ip-172-31-8-164 ~]# more /etc/cloudera-scm-server/db.properties
    # Auto-generated by scm_prepare_database.sh on Wed Nov 16 04:53:13 EST 2016
    ## For information describing how to configure the Cloudera Manager Server
    # to connect to databases, see the "Cloudera Manager Installation Guide."
    #
    com.cloudera.cmf.db.type=mysql
    com.cloudera.cmf.db.host=localhost
    com.cloudera.cmf.db.name=scm
    com.cloudera.cmf.db.user=scm
    com.cloudera.cmf.db.password=scm_password

    sudo service cloudera-scm-server start


    tail -f /var/log/cloudera-scm-server/cloudera-scm-server.log 
    2016-11-16 04:57:46,668 INFO ScmActive-0:com.cloudera.server.cmf.components.ScmActive: ScmActive completed successfully.
