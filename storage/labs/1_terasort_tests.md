    sudo useradd stefanM
  
    sudo su hdfs
    hdfs dfs -mkdir /user/stefanM
    hdfs dfs -chown stefanM:users /user/stefanM

    ### run test
    sudo su stefanM
    time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapred.map.tasks=4 -D dfs.blocksize=32m -Dmapred.map.tasks.speculative.execution=false 10000000000 terasort



     [stefanM@ip-172-31-8-164 ec2-user]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapred.map.tasks=4 -D dfs.blocksize=32m -Dmapred.map.tasks.speculative.execution=false 100 terasort2
     16/11/17 09:32:52 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-160.us-west-2.compute.internal/172.31.8.160:8032
     16/11/17 09:32:53 INFO terasort.TeraSort: Generating 100 using 4
     16/11/17 09:32:53 INFO mapreduce.JobSubmitter: number of splits:4
     16/11/17 09:32:53 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
     16/11/17 09:32:53 INFO Configuration.deprecation: mapred.map.tasks.speculative.execution is deprecated. Instead, use mapreduce.map.speculative
     16/11/17 09:32:53 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1479391893525_0002
     16/11/17 09:32:53 INFO impl.YarnClientImpl: Submitted application application_1479391893525_0002
     16/11/17 09:32:53 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-160.us-west-2.compute.internal:8088/proxy/application_1479391893525_0002/
     16/11/17 09:32:53 INFO mapreduce.Job: Running job: job_1479391893525_0002
     16/11/17 09:32:58 INFO mapreduce.Job: Job job_1479391893525_0002 running in uber mode : false
     16/11/17 09:32:58 INFO mapreduce.Job:  map 0% reduce 0%
     16/11/17 09:33:04 INFO mapreduce.Job:  map 100% reduce 0%
     16/11/17 09:33:04 INFO mapreduce.Job: Job job_1479391893525_0002 completed successfully
     16/11/17 09:33:04 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=488360
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=316
                HDFS: Number of bytes written=10000
                HDFS: Number of read operations=16
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=8
        Job Counters
                Launched map tasks=4
                Other local map tasks=4
                Total time spent by all maps in occupied slots (ms)=13054
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=13054
                Total vcore-seconds taken by all map tasks=13054
                Total megabyte-seconds taken by all map tasks=13367296
        Map-Reduce Framework
                Map input records=100
                Map output records=100
                Input split bytes=316
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=84
                CPU time spent (ms)=2700
                Physical memory (bytes) snapshot=721072128
                Virtual memory (bytes) snapshot=6330662912
                Total committed heap usage (bytes)=977272832
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=233519182817
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=10000

     real    0m14.875s
     user    0m5.925s
     sys     0m0.251s


     #### ok, next I allocate more disk space, got it
     hdfs dfs -rm -f  /user/stefanM/terasort*
     hdfs dfs -rmdir /user/stefanM/tera*

     #### bigger run
    time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapred.map.tasks=4 -D dfs.blocksize=32m -Dmapred.map.tasks.speculative.execution=false 10000 terasort3
    16/11/17 09:48:43 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-160.us-west-2.compute.internal/172.31.8.160:8032
    16/11/17 09:48:44 INFO terasort.TeraSort: Generating 10000 using 4
    16/11/17 09:48:44 INFO mapreduce.JobSubmitter: number of splits:4
    16/11/17 09:48:44 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
    16/11/17 09:48:44 INFO Configuration.deprecation: mapred.map.tasks.speculative.execution is deprecated. Instead, use mapreduce.map.speculative
    16/11/17 09:48:44 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1479391893525_0003
    16/11/17 09:48:44 INFO impl.YarnClientImpl: Submitted application application_1479391893525_0003
    16/11/17 09:48:44 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-160.us-west-2.compute.internal:8088/proxy/application_1479391893525_0003/
    16/11/17 09:48:45 INFO mapreduce.Job: Running job: job_1479391893525_0003
    16/11/17 09:48:50 INFO mapreduce.Job: Job job_1479391893525_0003 running in uber mode : false
    16/11/17 09:48:50 INFO mapreduce.Job:  map 0% reduce 0%
    16/11/17 09:48:56 INFO mapreduce.Job:  map 75% reduce 0%
    16/11/17 09:48:57 INFO mapreduce.Job:  map 100% reduce 0%
    16/11/17 09:48:57 INFO mapreduce.Job: Job job_1479391893525_0003 completed successfully
    16/11/17 09:48:57 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=488368
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=330
                HDFS: Number of bytes written=1000000
                HDFS: Number of read operations=16
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=8
        Job Counters
                Launched map tasks=4
                Other local map tasks=4
                Total time spent by all maps in occupied slots (ms)=14458
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=14458
                Total vcore-seconds taken by all map tasks=14458
                Total megabyte-seconds taken by all map tasks=14804992
        Map-Reduce Framework
                Map input records=10000
                Map output records=10000
                Input split bytes=330
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=82
                CPU time spent (ms)=3890
                Physical memory (bytes) snapshot=712028160
                Virtual memory (bytes) snapshot=6334574592
                Total committed heap usage (bytes)=918552576
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=21555350172850
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=1000000

    real    0m16.118s
    user    0m5.953s
    sys     0m0.259s


