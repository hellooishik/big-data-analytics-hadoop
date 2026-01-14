## Environment
- OS: Ubuntu 20.04 / 22.04
- Java: OpenJDK 8
- Hadoop: 3.3.x
- Hive: 3.x

## How to Run
1. Configure Hadoop using files in `config_prep/`
2. Start services:
   start-dfs.sh
   start-yarn.sh
3. Ingest data using `hadoop/hdfs_commands.sh`
4. Run Hive queries from `hive/`
5. Execute MapReduce job from `mapreduce/`
6. Run ML scripts from `ml/`

## Evidence for Submission
- JPS output screenshot
- HDFS block distribution screenshot
- Hive MapReduce execution screenshot
- YARN UI screenshot
- ML visualisation screenshot
