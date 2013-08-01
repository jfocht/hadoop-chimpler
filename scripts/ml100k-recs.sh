#!/bin/sh

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home/
export HADOOP_PREFIX=`pwd`/hadoop-1.1.2/
export HADOOP_CONF_DIR=$HADOOP_PREFIX/conf
export HADOOP_OPTS="-Djava.security.krb5.realm=OX.AC.UK -Djava.security.krb5.kdc=kdc0.ox.ac.uk:kdc1.ox.ac.uk"
export PATH=$HADOOP_PREFIX/bin:$PATH
export MAHOUT_HOME=`pwd`/mahout-distribution-0.8

cd ml-100k
hadoop fs -put u.data u.data
hadoop jar $MAHOUT_HOME/mahout-core-0.8-job.jar \
    org.apache.mahout.cf.taste.hadoop.item.RecommenderJob \
    -s SIMILARITY_COOCCURRENCE --input u.data --output output
cd -
hadoop fs -getmerge output output.txt
