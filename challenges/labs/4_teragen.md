<pre><code>
[bavaria@ip-172-31-8-248 ec2-user]$
[bavaria@ip-172-31-8-248 ec2-user]$
[bavaria@ip-172-31-8-248 ec2-user]$     time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapred.map.tasks=4 -D dfs.blocksize=16m -Dmapred.map.tasks.speculative.execution=false 51200000 tgen512m
16/11/18 05:51:51 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-247.us-west-2.compute.internal/172.31.8.247:8032
16/11/18 05:51:51 INFO terasort.TeraSort: Generating 51200000 using 4
16/11/18 05:51:51 INFO mapreduce.JobSubmitter: number of splits:4
16/11/18 05:51:51 INFO Configuration.deprecation: mapred.map.tasks.speculative.execution is deprecated. Instead, use mapreduce.map.speculative
16/11/18 05:51:51 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
16/11/18 05:51:51 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1479465621413_0002
16/11/18 05:51:52 INFO impl.YarnClientImpl: Submitted application application_1479465621413_0002
16/11/18 05:51:52 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-247.us-west-2.compute.internal:8088/proxy/application_1479465621413_0002/
16/11/18 05:51:52 INFO mapreduce.Job: Running job: job_1479465621413_0002
16/11/18 05:51:57 INFO mapreduce.Job: Job job_1479465621413_0002 running in uber mode : false
16/11/18 05:51:57 INFO mapreduce.Job:  map 0% reduce 0%
16/11/18 05:52:08 INFO mapreduce.Job:  map 6% reduce 0%
16/11/18 05:52:09 INFO mapreduce.Job:  map 12% reduce 0%
16/11/18 05:52:10 INFO mapreduce.Job:  map 21% reduce 0%
16/11/18 05:52:11 INFO mapreduce.Job:  map 23% reduce 0%
16/11/18 05:52:12 INFO mapreduce.Job:  map 25% reduce 0%
16/11/18 05:52:13 INFO mapreduce.Job:  map 30% reduce 0%
16/11/18 05:52:14 INFO mapreduce.Job:  map 32% reduce 0%
16/11/18 05:52:15 INFO mapreduce.Job:  map 35% reduce 0%
16/11/18 05:52:16 INFO mapreduce.Job:  map 39% reduce 0%
16/11/18 05:52:17 INFO mapreduce.Job:  map 41% reduce 0%
16/11/18 05:52:18 INFO mapreduce.Job:  map 44% reduce 0%
16/11/18 05:52:19 INFO mapreduce.Job:  map 49% reduce 0%
16/11/18 05:52:20 INFO mapreduce.Job:  map 51% reduce 0%
16/11/18 05:52:21 INFO mapreduce.Job:  map 53% reduce 0%
16/11/18 05:52:22 INFO mapreduce.Job:  map 58% reduce 0%
16/11/18 05:52:23 INFO mapreduce.Job:  map 60% reduce 0%
16/11/18 05:52:24 INFO mapreduce.Job:  map 63% reduce 0%
16/11/18 05:52:25 INFO mapreduce.Job:  map 67% reduce 0%
16/11/18 05:52:26 INFO mapreduce.Job:  map 69% reduce 0%
16/11/18 05:52:27 INFO mapreduce.Job:  map 70% reduce 0%
16/11/18 05:52:28 INFO mapreduce.Job:  map 75% reduce 0%
16/11/18 05:52:29 INFO mapreduce.Job:  map 76% reduce 0%
16/11/18 05:52:30 INFO mapreduce.Job:  map 78% reduce 0%
16/11/18 05:52:31 INFO mapreduce.Job:  map 83% reduce 0%
16/11/18 05:52:32 INFO mapreduce.Job:  map 85% reduce 0%
16/11/18 05:52:33 INFO mapreduce.Job:  map 87% reduce 0%
16/11/18 05:52:34 INFO mapreduce.Job:  map 91% reduce 0%
16/11/18 05:52:35 INFO mapreduce.Job:  map 96% reduce 0%
16/11/18 05:52:36 INFO mapreduce.Job:  map 100% reduce 0%
16/11/18 05:52:37 INFO mapreduce.Job: Job job_1479465621413_0002 completed successfully
16/11/18 05:52:37 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=478496
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=339
                HDFS: Number of bytes written=5120000000
                HDFS: Number of read operations=16
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=8
        Job Counters
                Launched map tasks=4
                Other local map tasks=4
                Total time spent by all maps in occupied slots (ms)=144901
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=144901
                Total vcore-seconds taken by all map tasks=144901
                Total megabyte-seconds taken by all map tasks=148378624
        Map-Reduce Framework
                Map input records=51200000
                Map output records=51200000
                Input split bytes=339
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=731
                CPU time spent (ms)=98230
                Physical memory (bytes) snapshot=1248141312
                Virtual memory (bytes) snapshot=6303121408
                Total committed heap usage (bytes)=1130364928
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=109963291816450258
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=5120000000

real    0m49.010s
user    0m5.797s
sys     0m0.228s
[bavaria@ip-172-31-8-248 ec2-user]$
</code></pre>
