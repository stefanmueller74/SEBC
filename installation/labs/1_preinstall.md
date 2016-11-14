
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
    
    ### Report the network interface attributes
    ifconfig -a

    ### Show forward and reverse host lookups using getent and nslookup

    sudo yum install bind-utils
    
    nslookup $(hostname)

    ### Verify the nscd service is running
    sudo yum install nscd
    service nscd start

    ### Verify the ntpd service is running
    sudo yum install ntp
    service ntpd start
    


 
