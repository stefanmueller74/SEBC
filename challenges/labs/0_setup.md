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
<pre><code>
[ec2-user@ip-172-31-8-247 ~]$ sudo yum repolist enabled
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
repo id                                                                  repo name                                                                                status
rhui-REGION-client-config-server-7/x86_64                                Red Hat Update Infrastructure 2.0 Client Configuration Server 7                               6
rhui-REGION-rhel-server-releases/7Server/x86_64                          Red Hat Enterprise Linux Server 7 (RPMs)                                                 13,390
rhui-REGION-rhel-server-rh-common/7Server/x86_64                         Red Hat Enterprise Linux Server 7 RH Common (RPMs)                                          209
repolist: 13,605
[ec2-user@ip-172-31-8-247 ~]$

</code></pre>


# output of passwd
<pre><code>
[ec2-user@ip-172-31-8-247 ~]$ cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:99:99:Nobody:/:/sbin/nologin
avahi-autoipd:x:170:170:Avahi IPv4LL Stack:/var/lib/avahi-autoipd:/sbin/nologin
systemd-bus-proxy:x:999:997:systemd Bus Proxy:/:/sbin/nologin
systemd-network:x:998:996:systemd Network Management:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
polkitd:x:997:995:User for polkitd:/:/sbin/nologin
tss:x:59:59:Account used by the trousers package to sandbox the tcsd daemon:/dev/null:/sbin/nologin
postfix:x:89:89::/var/spool/postfix:/sbin/nologin
chrony:x:996:993::/var/lib/chrony:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
ec2-user:x:1000:1000:Cloud User:/home/ec2-user:/bin/bash
bavaria:x:2700:2700::/home/bavaria:/bin/bash
saxony:x:2800:2800::/home/saxony:/bin/bash

</code></pre>

# output of groups

<pre><code>
[ec2-user@ip-172-31-8-247 ~]$ cat /etc/group
root:x:0:
bin:x:1:
daemon:x:2:
sys:x:3:
adm:x:4:ec2-user
tty:x:5:
disk:x:6:
lp:x:7:
mem:x:8:
kmem:x:9:
wheel:x:10:ec2-user
cdrom:x:11:
mail:x:12:postfix
man:x:15:
dialout:x:18:
floppy:x:19:
games:x:20:
tape:x:30:
video:x:39:
ftp:x:50:
lock:x:54:
audio:x:63:
nobody:x:99:
users:x:100:
utmp:x:22:
utempter:x:35:
avahi-autoipd:x:170:
ssh_keys:x:999:
input:x:998:
systemd-journal:x:190:ec2-user
systemd-bus-proxy:x:997:
systemd-network:x:996:
dbus:x:81:
polkitd:x:995:
tss:x:59:
dip:x:40:
cgred:x:994:
postdrop:x:90:
postfix:x:89:
chrony:x:993:
sshd:x:74:
ec2-user:x:1000:
bavaria:x:2700:
saxony:x:2800:
democratic:x:2801:saxony
social:x:2802:bavaria

</code></pre>
