
    ### Setting swappiness in RedHat
    echo vm.swappiness=1 >> /etc/sysctl.conf
    sudo sysctl -p /etc/sysctl.conf
    more /proc/sys/vm/swappiness
    
    ### Show mount attributes
    mount |grep xfs
    ### no ext Filesystem in use
    
    ### disable transparent hugepages
    echo never > /sys/kernel/mm/transparent_hugepage/enabled
    echo never > /sys/kernel/mm/transparent_hugepage/defrag

    ### copy the lines above into /etc/rc.d/rc.local
    vi  /etc/rc.d/rc.local
    chmod +x /etc/rc.d/rc.local
    
    ### Report the network interface attributes
    ifconfig -a

    ### Show forward and reverse host lookups using getent and nslookup

    sudo yum install bind-utils
    
    nslookup $(hostname)

    [root@ip-172-31-8-164 ~]# nslookup ec2-35-163-72-61.us-west-2.compute.amazonaws.com
    Server:         172.31.0.2
    Address:        172.31.0.2#53
    Non-authoritative answer:
    Name:   ec2-35-163-72-61.us-west-2.compute.amazonaws.com
    Address: 172.31.8.164

    nslookup 35.163.72.61
    Server:         172.31.0.2
    Address:        172.31.0.2#53
    Non-authoritative answer:
    61.72.163.35.in-addr.arpa       name = ec2-35-163-72-61.us-west-2.compute.amazonaws.com.

    [root@ip-172-31-8-164 ~]# getent hosts 35.163.72.61
    35.163.72.61    ec2-35-163-72-61.us-west-2.compute.amazonaws.com

    ### Verify the nscd service is running
    sudo yum install nscd
    service nscd start
    ps -ef |grep nscd
    systemctl enable nscd.service

    ### Verify the ntpd service is running
    sudo yum install ntp
    service ntpd start
    ps -ef |grep ntpd
    systemctl enable ntpd.service


 
