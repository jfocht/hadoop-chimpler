#!/bin/sh

export HADOOP_PREFIX=`pwd`/hadoop-1.1.2/
export HADOOP_CONF_DIR=$HADOOP_PREFIX/conf
export HADOOP_OPTS="-Djava.security.krb5.realm=OX.AC.UK -Djava.security.krb5.kdc=kdc0.ox.ac.uk:kdc1.ox.ac.uk"
export PATH=$HADOOP_PREFIX/bin:$PATH
cat > $HADOOP_CONF_DIR/core-site.xml <<SIMPLECONF
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>

<!-- site specific overrides -->

<configuration>
        <property>
                <name>fs.default.name</name>
                <value>hdfs://localhost:9000</value>
        </property>
</configuration>
SIMPLECONF

test $( ps -e | grep namenode | wc | awk '{print $1}' ) -eq 0 && hadoop namenode -format
start-all.sh
