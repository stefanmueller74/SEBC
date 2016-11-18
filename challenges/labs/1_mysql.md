# Version of mysql
<pre><code>
[root@ip-172-31-8-247 ec2-user]# sudo mysql --version
mysql  Ver 14.14 Distrib 5.6.34, for Linux (x86_64) using  EditLine wrapper

</code></pre>


# Show databases
<pre><code>
[ec2-user@ip-172-31-8-247 ~]$ mysql -u root -proot
Warning: Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.6.34 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
9 rows in set (0.00 sec)

</code></pre>

# Show database priviledges
<pre><code>
[ec2-user@ip-172-31-8-247 ~]$ mysql -u root -proot
Warning: Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.6.34 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> select * from information_schema.schema_privileges;
+--------------+---------------+--------------+-------------------------+--------------+
| GRANTEE      | TABLE_CATALOG | TABLE_SCHEMA | PRIVILEGE_TYPE          | IS_GRANTABLE |
+--------------+---------------+--------------+-------------------------+--------------+
| 'scm'@'%'    | def           | scm          | SELECT                  | NO           |
| 'scm'@'%'    | def           | scm          | INSERT                  | NO           |
| 'scm'@'%'    | def           | scm          | UPDATE                  | NO           |
| 'scm'@'%'    | def           | scm          | DELETE                  | NO           |
| 'scm'@'%'    | def           | scm          | CREATE                  | NO           |
| 'scm'@'%'    | def           | scm          | DROP                    | NO           |
| 'scm'@'%'    | def           | scm          | REFERENCES              | NO           |
| 'scm'@'%'    | def           | scm          | INDEX                   | NO           |
| 'scm'@'%'    | def           | scm          | ALTER                   | NO           |
| 'scm'@'%'    | def           | scm          | CREATE TEMPORARY TABLES | NO           |
| 'scm'@'%'    | def           | scm          | LOCK TABLES             | NO           |
| 'scm'@'%'    | def           | scm          | EXECUTE                 | NO           |
| 'scm'@'%'    | def           | scm          | CREATE VIEW             | NO           |
| 'scm'@'%'    | def           | scm          | SHOW VIEW               | NO           |
| 'scm'@'%'    | def           | scm          | CREATE ROUTINE          | NO           |
| 'scm'@'%'    | def           | scm          | ALTER ROUTINE           | NO           |
| 'scm'@'%'    | def           | scm          | EVENT                   | NO           |
| 'scm'@'%'    | def           | scm          | TRIGGER                 | NO           |
| 'rman'@'%'   | def           | rman         | SELECT                  | NO           |
| 'rman'@'%'   | def           | rman         | INSERT                  | NO           |
| 'rman'@'%'   | def           | rman         | UPDATE                  | NO           |
| 'rman'@'%'   | def           | rman         | DELETE                  | NO           |
| 'rman'@'%'   | def           | rman         | CREATE                  | NO           |
| 'rman'@'%'   | def           | rman         | DROP                    | NO           |
| 'rman'@'%'   | def           | rman         | REFERENCES              | NO           |
| 'rman'@'%'   | def           | rman         | INDEX                   | NO           |
| 'rman'@'%'   | def           | rman         | ALTER                   | NO           |
| 'rman'@'%'   | def           | rman         | CREATE TEMPORARY TABLES | NO           |
| 'rman'@'%'   | def           | rman         | LOCK TABLES             | NO           |
| 'rman'@'%'   | def           | rman         | EXECUTE                 | NO           |
| 'rman'@'%'   | def           | rman         | CREATE VIEW             | NO           |
| 'rman'@'%'   | def           | rman         | SHOW VIEW               | NO           |
| 'rman'@'%'   | def           | rman         | CREATE ROUTINE          | NO           |
| 'rman'@'%'   | def           | rman         | ALTER ROUTINE           | NO           |
| 'rman'@'%'   | def           | rman         | EVENT                   | NO           |
| 'rman'@'%'   | def           | rman         | TRIGGER                 | NO           |
| 'hive'@'%'   | def           | hive         | SELECT                  | NO           |
| 'hive'@'%'   | def           | hive         | INSERT                  | NO           |
| 'hive'@'%'   | def           | hive         | UPDATE                  | NO           |
| 'hive'@'%'   | def           | hive         | DELETE                  | NO           |
| 'hive'@'%'   | def           | hive         | CREATE                  | NO           |
| 'hive'@'%'   | def           | hive         | DROP                    | NO           |
| 'hive'@'%'   | def           | hive         | REFERENCES              | NO           |
| 'hive'@'%'   | def           | hive         | INDEX                   | NO           |
| 'hive'@'%'   | def           | hive         | ALTER                   | NO           |
| 'hive'@'%'   | def           | hive         | CREATE TEMPORARY TABLES | NO           |
| 'hive'@'%'   | def           | hive         | LOCK TABLES             | NO           |
| 'hive'@'%'   | def           | hive         | EXECUTE                 | NO           |
| 'hive'@'%'   | def           | hive         | CREATE VIEW             | NO           |
| 'hive'@'%'   | def           | hive         | SHOW VIEW               | NO           |
| 'hive'@'%'   | def           | hive         | CREATE ROUTINE          | NO           |
| 'hive'@'%'   | def           | hive         | ALTER ROUTINE           | NO           |
| 'hive'@'%'   | def           | hive         | EVENT                   | NO           |
| 'hive'@'%'   | def           | hive         | TRIGGER                 | NO           |
| 'oozie'@'%'  | def           | oozie        | SELECT                  | NO           |
| 'oozie'@'%'  | def           | oozie        | INSERT                  | NO           |
| 'oozie'@'%'  | def           | oozie        | UPDATE                  | NO           |
| 'oozie'@'%'  | def           | oozie        | DELETE                  | NO           |
| 'oozie'@'%'  | def           | oozie        | CREATE                  | NO           |
| 'oozie'@'%'  | def           | oozie        | DROP                    | NO           |
| 'oozie'@'%'  | def           | oozie        | REFERENCES              | NO           |
| 'oozie'@'%'  | def           | oozie        | INDEX                   | NO           |
| 'oozie'@'%'  | def           | oozie        | ALTER                   | NO           |
| 'oozie'@'%'  | def           | oozie        | CREATE TEMPORARY TABLES | NO           |
| 'oozie'@'%'  | def           | oozie        | LOCK TABLES             | NO           |
| 'oozie'@'%'  | def           | oozie        | EXECUTE                 | NO           |
| 'oozie'@'%'  | def           | oozie        | CREATE VIEW             | NO           |
| 'oozie'@'%'  | def           | oozie        | SHOW VIEW               | NO           |
| 'oozie'@'%'  | def           | oozie        | CREATE ROUTINE          | NO           |
| 'oozie'@'%'  | def           | oozie        | ALTER ROUTINE           | NO           |
| 'oozie'@'%'  | def           | oozie        | EVENT                   | NO           |
| 'oozie'@'%'  | def           | oozie        | TRIGGER                 | NO           |
| 'hue'@'%'    | def           | hue          | SELECT                  | NO           |
| 'hue'@'%'    | def           | hue          | INSERT                  | NO           |
| 'hue'@'%'    | def           | hue          | UPDATE                  | NO           |
| 'hue'@'%'    | def           | hue          | DELETE                  | NO           |
| 'hue'@'%'    | def           | hue          | CREATE                  | NO           |
| 'hue'@'%'    | def           | hue          | DROP                    | NO           |
| 'hue'@'%'    | def           | hue          | REFERENCES              | NO           |
| 'hue'@'%'    | def           | hue          | INDEX                   | NO           |
| 'hue'@'%'    | def           | hue          | ALTER                   | NO           |
| 'hue'@'%'    | def           | hue          | CREATE TEMPORARY TABLES | NO           |
| 'hue'@'%'    | def           | hue          | LOCK TABLES             | NO           |
| 'hue'@'%'    | def           | hue          | EXECUTE                 | NO           |
| 'hue'@'%'    | def           | hue          | CREATE VIEW             | NO           |
| 'hue'@'%'    | def           | hue          | SHOW VIEW               | NO           |
| 'hue'@'%'    | def           | hue          | CREATE ROUTINE          | NO           |
| 'hue'@'%'    | def           | hue          | ALTER ROUTINE           | NO           |
| 'hue'@'%'    | def           | hue          | EVENT                   | NO           |
| 'hue'@'%'    | def           | hue          | TRIGGER                 | NO           |
| 'sentry'@'%' | def           | sentry       | SELECT                  | NO           |
| 'sentry'@'%' | def           | sentry       | INSERT                  | NO           |
| 'sentry'@'%' | def           | sentry       | UPDATE                  | NO           |
| 'sentry'@'%' | def           | sentry       | DELETE                  | NO           |
| 'sentry'@'%' | def           | sentry       | CREATE                  | NO           |
| 'sentry'@'%' | def           | sentry       | DROP                    | NO           |
| 'sentry'@'%' | def           | sentry       | REFERENCES              | NO           |
| 'sentry'@'%' | def           | sentry       | INDEX                   | NO           |
| 'sentry'@'%' | def           | sentry       | ALTER                   | NO           |
| 'sentry'@'%' | def           | sentry       | CREATE TEMPORARY TABLES | NO           |
| 'sentry'@'%' | def           | sentry       | LOCK TABLES             | NO           |
| 'sentry'@'%' | def           | sentry       | EXECUTE                 | NO           |
| 'sentry'@'%' | def           | sentry       | CREATE VIEW             | NO           |
| 'sentry'@'%' | def           | sentry       | SHOW VIEW               | NO           |
| 'sentry'@'%' | def           | sentry       | CREATE ROUTINE          | NO           |
| 'sentry'@'%' | def           | sentry       | ALTER ROUTINE           | NO           |
| 'sentry'@'%' | def           | sentry       | EVENT                   | NO           |
| 'sentry'@'%' | def           | sentry       | TRIGGER                 | NO           |
+--------------+---------------+--------------+-------------------------+--------------+
108 rows in set (0.00 sec)

</code></pre>
