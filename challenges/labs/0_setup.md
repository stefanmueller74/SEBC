# List the region, 
    US West (Oregon)
# AMI ID, and 
    RHEL-7.2_HVM-20160219-x86_64-2-Hourly2-GP2 (ami-ca56b5aa)
# OS you are using
    <pre><code>
    [ec2-user@ip-172-31-8-247 ~]$ more /etc/redhat-release
    Red Hat Enterprise Linux Server release 7.2 (Maipo)
    </code></pre>
# List the volume space you have available on each node
<pre><code>
[ec2-user@ip-172-31-8-247 ~]$
[ec2-user@ip-172-31-8-247 ~]$ echo $HOSTNAME; df -h
ip-172-31-8-247.us-west-2.compute.internal
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       10G  1.2G  8.9G  12% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
tmpfs           1.5G     0  1.5G   0% /run/user/1000
tmpfs           1.5G     0  1.5G   0% /run/user/0
/dev/xvdb        20G   58M   19G   1% /hadoop
[ec2-user@ip-172-31-8-247 ~]$ n2.sh
Last login: Fri Nov 18 02:20:11 2016 from ip-172-31-8-247.us-west-2.compute.internal
[ec2-user@ip-172-31-8-248 ~]$ echo $HOSTNAME; df -h
ip-172-31-8-248.us-west-2.compute.internal
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       10G  942M  9.1G  10% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
tmpfs           1.5G     0  1.5G   0% /run/user/0
/dev/xvdb        20G   44M   19G   1% /hadoop
tmpfs           1.5G     0  1.5G   0% /run/user/1000
[ec2-user@ip-172-31-8-248 ~]$ n3.sh
-bash: n3.sh: command not found
[ec2-user@ip-172-31-8-248 ~]$ exit
logout
Connection to 172.31.8.248 closed.
[ec2-user@ip-172-31-8-247 ~]$ n3.sh
Last login: Fri Nov 18 02:21:58 2016 from ip-172-31-8-247.us-west-2.compute.internal
[ec2-user@ip-172-31-8-249 ~]$ echo $HOSTNAME; df -h
ip-172-31-8-249.us-west-2.compute.internal
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       10G  942M  9.1G  10% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
tmpfs           1.5G     0  1.5G   0% /run/user/0
/dev/xvdb        20G   44M   19G   1% /hadoop
tmpfs           1.5G     0  1.5G   0% /run/user/1000
[ec2-user@ip-172-31-8-249 ~]$ exit
logout
Connection to 172.31.8.249 closed.
[ec2-user@ip-172-31-8-247 ~]$ n4.sh
Last login: Fri Nov 18 02:22:15 2016 from ip-172-31-8-247.us-west-2.compute.internal
[ec2-user@ip-172-31-8-250 ~]$ echo $HOSTNAME; df -h
ip-172-31-8-250.us-west-2.compute.internal
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       10G  942M  9.1G  10% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
/dev/xvdb        20G   44M   19G   1% /hadoop
tmpfs           1.5G     0  1.5G   0% /run/user/1000
[ec2-user@ip-172-31-8-250 ~]$ exit
logout
Connection to 172.31.8.250 closed.
[ec2-user@ip-172-31-8-247 ~]$ n5.sh
Last login: Fri Nov 18 02:23:01 2016 from ip-172-31-8-247.us-west-2.compute.internal
[ec2-user@ip-172-31-8-251 ~]$ echo $HOSTNAME; df -h
ip-172-31-8-251.us-west-2.compute.internal
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       10G  942M  9.1G  10% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
/dev/xvdb        20G   44M   19G   1% /hadoop
tmpfs           1.5G     0  1.5G   0% /run/user/1000
</code></pre>
# The command and output for yum repolist enabled
