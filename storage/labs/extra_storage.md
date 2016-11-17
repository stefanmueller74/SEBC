    ### create extra storage
    fdisk -l
    ### xfs works with default settings
    mkfs  /dev/xvdb
    
    mkdir /hadoop
    mount /dev/xvdb /hadoop
