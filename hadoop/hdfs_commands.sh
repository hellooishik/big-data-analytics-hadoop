#!/bin/bash

start-dfs.sh
start-yarn.sh

hdfs dfs -mkdir /amazon_reviews
hdfs dfs -put ../data/raw/amazon_reviews_large.csv /amazon_reviews/

hdfs dfs -ls /amazon_reviews
hdfs fsck /amazon_reviews/amazon_reviews_large.csv -files -blocks -locations
