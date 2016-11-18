# List of repo
<pre><code>
[root@ip-172-31-8-248 ec2-user]# ls /etc/yum.repos.d
cloudera-manager.repo  mysql-community.repo  mysql-community-source.repo  redhat.repo  redhat-rhui-client-config.repo  redhat-rhui.repo  rhui-load-balancers.conf
</code></pre>
# Grant scm access to your MySQL server only from the CM node (no host wildcard)
<pre><code>
 revoke all on scm.* from 'scm'@'%';
 grant all on scm.* TO 'scm'@'172.31.8.248' IDENTIFIED BY 'scm';
</code></pre>
<pre><code>
[root@ip-172-31-8-248 ec2-user]# sudo /usr/share/cmf/schema/scm_prepare_database.sh  mysql scm scm scm -h 172.31.8.247  -P 3306
JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
Verifying that we can write to /etc/cloudera-scm-server
Creating SCM configuration file in /etc/cloudera-scm-server
Executing:  /usr/java/jdk1.7.0_67-cloudera/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
[                          main] DbCommandExecutor              INFO  Successfully connected to database.
All done, your SCM database is configured correctly!


</code></pre>
