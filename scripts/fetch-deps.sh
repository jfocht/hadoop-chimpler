#!/bin/sh

curl http://mirror.tcpdiag.net/apache/hadoop/common/hadoop-1.1.2/hadoop-1.1.2-bin.tar.gz \
    > hadoop-1.1.2-bin.tar.gz
tar xvfz hadoop-1.1.2-bin.tar.gz
ssh-keygen -t rsa -P ''
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
ssh localhost echo Connected
curl http://mirror.reverse.net/pub/apache/mahout/0.8/mahout-distribution-0.8.tar.gz \
    > mahout-distribution-0.8.tar.gz
tar xvzf mahout-distribution-0.8.tar.gz
curl http://www.grouplens.org/system/files/ml-100k.zip > ml-100k.zip
unzip ml-100k.zip
