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
    GRANT REPLICATION SLAVE ON *.* TO 'root'@'35.160.115.173' IDENTIFIED BY 'xxxxxx';
    SET GLOBAL binlog_format = 'ROW';
    FLUSH TABLES WITH READ LOCK;

    UNLOCK TABLES;
    
    ### on replica
    CHANGE MASTER TO MASTER_HOST='35.163.72.61', MASTER_USER='root', \
    MASTER_PASSWORD='xxxxxx', \
    MASTER_LOG_FILE='mysql_binary_log.000003', \
    MASTER_LOG_POS=2370;
