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
