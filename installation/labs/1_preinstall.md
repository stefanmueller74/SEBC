
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
    
    


 
