    create database oozie;

    grant all privileges on oozie.* to 'oozie'@'localhost' identified by 'oozie_password';
    grant all privileges on oozie.* to 'oozie'@'%' identified by 'oozie_password';

    # activated root access from outside
    [root@ip-172-31-8-164 ec2-user]# more /etc/ssh/sshd_config |grep -i permitroot
    PermitRootLogin yes
    # the setting of "PermitRootLogin without-password".

    


