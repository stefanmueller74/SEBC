    create database oozie;

    grant all privileges on oozie.* to 'oozie'@'localhost' identified by 'oozie_password';
    grant all privileges on oozie.* to 'oozie'@'%' identified by 'oozie_password';

    # activated root access from outside
    [root@ip-172-31-8-164 ec2-user]# more /etc/ssh/sshd_config |grep -i permitroot
    PermitRootLogin yes
    # the setting of "PermitRootLogin without-password".
        
    [root@ip-172-31-8-164 ec2-user]# service sshd restart
    Redirecting to /bin/systemctl restart  sshd.service

    ### install packages within cloudera manager via root
    https://www.cloudera.com/documentation/enterprise/5-2-x/topics/cm_ig_permissions.html
