    ### Installation of mariadb on master and replica
    yum -y install mariadb-server mariadb
    systemctl start mariadb
    systemctl status mariadb

    /usr/bin/mysql_secure_installation
    
    ### JDBC Installation
    yum install wget
    wget "http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.40.tar.gz"
    tar zxvf mysql-connector-java-5.1.40.tar.gz
    sudo mkdir -p /usr/share/java/
    sudo cp mysql-connector-java-5.1.40/mysql-connector-java-5.1.40-bin.jar /usr/share/java/mysql-connector-java.jar    
            
    mysql -u root -p
    ### AMON database 
    create database amon DEFAULT CHARACTER SET utf8;
    grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'amon_password';
    ### RMON database
    create database rman DEFAULT CHARACTER SET utf8;
    grant all on amon.* TO 'rman'@'%' IDENTIFIED BY 'rman_password';
    ### METASTORE database
    create database metastore DEFAULT CHARACTER SET utf8;
    grant all on amon.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';
    ### SENTRY database
    create database sentry DEFAULT CHARACTER SET utf8;
    grant all on amon.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';
    ### Results 
    MariaDB> show databases
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | amon               |
    | metastore          |
    | mysql              |
    | performance_schema |
    | rman               |
    | sentry             |
    +--------------------+
    
    ### configuring replation
    ### on master
    GRANT REPLICATION SLAVE ON *.* TO 'root'@'ec2-35-160-115-173.us-west-2.compute.amazonaws.com' IDENTIFIED BY 'xxxxxx';
    SET GLOBAL binlog_format = 'ROW';
    FLUSH TABLES WITH READ LOCK;

    UNLOCK TABLES;
    
    ### on replica
    CHANGE MASTER TO MASTER_HOST='ec2-35-163-72-61.us-west-2.compute.amazonaws.com', MASTER_USER='root', \
    MASTER_PASSWORD='xxxxxx', \
    MASTER_LOG_FILE='mysql_binary_log.000003', \
    MASTER_LOG_POS=2370;

    START SLAVE;

    
        ### Result
    MariaDB [(none)]>
    MariaDB [(none)]> SHOW SLAVE STATUS \G
    *************************** 1. row ***************************
                   Slave_IO_State: Waiting for master to send event
                      Master_Host: ec2-35-163-72-61.us-west-2.compute.amazonaws.com
                      Master_User: root                  Master_Port: 3306
                    Connect_Retry: 60              Master_Log_File: mysql_binary_log.000004
              Read_Master_Log_Pos: 619               Relay_Log_File: mariadb-relay-bin.000002
                    Relay_Log_Pos: 910        Relay_Master_Log_File: mysql_binary_log.000004
                 Slave_IO_Running: Yes            Slave_SQL_Running: Yes
                  Replicate_Do_DB:
              Replicate_Ignore_DB:
               Replicate_Do_Table:
           Replicate_Ignore_Table:
          Replicate_Wild_Do_Table:
      Replicate_Wild_Ignore_Table:
                       Last_Errno: 0
                       Last_Error:
                     Skip_Counter: 0
              Exec_Master_Log_Pos: 619
                  Relay_Log_Space: 1206
                  Until_Condition: None
                   Until_Log_File:
                    Until_Log_Pos: 0
               Master_SSL_Allowed: No
               Master_SSL_CA_File:
               Master_SSL_CA_Path:
                  Master_SSL_Cert:
                Master_SSL_Cipher:
                   Master_SSL_Key:
            Seconds_Behind_Master: 0
    Master_SSL_Verify_Server_Cert: No
                    Last_IO_Errno: 0
                    Last_IO_Error:
                   Last_SQL_Errno: 0
                   Last_SQL_Error:
      Replicate_Ignore_Server_Ids:
                 Master_Server_Id: 611
    row in set (0.00 sec)

    ### Master dumpen
    mysqldump --all-databases --allow-keywords --single-transaction --flush-logs --master-data=2 -r /root/mysqldump.sql

    ### import in replica
    cat /root/mysqldump.sql | mysql -u root -p


    grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'amon_password';
    grant all on rmon.* TO 'rman'@'%' IDENTIFIED BY 'rman_password';
    grant all on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';
    grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';
    create database hue DEFAULT CHARACTER SET utf8;
    grant all on hue.* TO 'hue'@'%' IDENTIFIED BY 'hue_password';
    grant all on amon.* TO 'hue'@'%' IDENTIFIED BY 'hue_password';
