# Copy the statement SHOW GRANTS FOR <database> and the output for each of rman, hive, and scm into the file
<pre><code>
[ec2-user@ip-172-31-8-247 ~]$ mysql -h 172.31.8.247  -P 3306 -u root -proot
Warning: Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 348
Server version: 5.6.34 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
mysql>
mysql> SHOW GRANTS FOR rman
    -> ;
+-----------------------------------------------------------------------------------------------------+
| Grants for rman@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'rman'@'%' IDENTIFIED BY PASSWORD '*819397F8B454D58DA4E9F42A88A4873756B8C96D' |
| GRANT ALL PRIVILEGES ON `rman`.* TO 'rman'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> SHOW GRANTS FOR hive;
+-----------------------------------------------------------------------------------------------------+
| Grants for hive@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'hive'@'%' IDENTIFIED BY PASSWORD '*4DF1D66463C18D44E3B001A8FB1BBFBEA13E27FC' |
| GRANT ALL PRIVILEGES ON `hive`.* TO 'hive'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> SHOW GRANTS FOR scm;
+----------------------------------------------------------------------------------------------------+
| Grants for scm@%                                                                                   |
+----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'scm'@'%' IDENTIFIED BY PASSWORD '*45E6E3C68BDF1AC7EBB5C5A3BCBD5E9437B293BE' |
+----------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql>

</code></pre>
# hdfs dfs -ls /user 
<pre><code>
[hdfs@ip-172-31-8-248 ec2-user]$ hdfs dfs -ls /user
Found 6 items
drwxr-xr-x   - bavaria bavaria          0 2016-11-18 05:40 /user/bavaria
drwxrwxrwx   - mapred  hadoop           0 2016-11-18 05:32 /user/history
drwxrwxr-t   - hive    hive             0 2016-11-18 05:33 /user/hive
drwxrwxr-x   - hue     hue              0 2016-11-18 05:34 /user/hue
drwxrwxr-x   - oozie   oozie            0 2016-11-18 05:34 /user/oozie
drwxr-xr-x   - saxony  saxony           0 2016-11-18 05:40 /user/saxony
[hdfs@ip-172-31-8-248 ec2-user]$

</code></pre>

# The output from the CM API call ../api/v12/hosts
<pre><code>
{
  "items" : [ {
    "hostId" : "i-0fab5efa13167b9f9",
    "ipAddress" : "172.31.8.247",
    "hostname" : "ip-172-31-8-247.us-west-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-8-248.us-west-2.compute.internal:7180/cmf/hostRedirect/i-0fab5efa13167b9f9",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "i-052fc2b6c043248c5",
    "ipAddress" : "172.31.8.248",
    "hostname" : "ip-172-31-8-248.us-west-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-8-248.us-west-2.compute.internal:7180/cmf/hostRedirect/i-052fc2b6c043248c5",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "i-010cd40f85d08fa82",
    "ipAddress" : "172.31.8.249",
    "hostname" : "ip-172-31-8-249.us-west-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-8-248.us-west-2.compute.internal:7180/cmf/hostRedirect/i-010cd40f85d08fa82",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "i-0fe4f689276d25b4f",
    "ipAddress" : "172.31.8.250",
    "hostname" : "ip-172-31-8-250.us-west-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-8-248.us-west-2.compute.internal:7180/cmf/hostRedirect/i-0fe4f689276d25b4f",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "i-00f2e3d403f1bfb19",
    "ipAddress" : "172.31.8.251",
    "hostname" : "ip-172-31-8-251.us-west-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-8-248.us-west-2.compute.internal:7180/cmf/hostRedirect/i-00f2e3d403f1bfb19",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  } ]
}
</code></pre>

