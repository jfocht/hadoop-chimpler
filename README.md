README
======

Hadoop Introduction materials from Chimpler
<http://chimpler.wordpress.com/2013/02/20/playing-with-the-mahout-recommendation-engine-on-a-hadoop-cluster/>

Getting Started
---------------

# Fetch the dependencies

$ ./scripts/fetch-deps.sh

# Ensure that `JAVA_HOME` is set at the system level or set it in
# `hadoop-1.1.2/conf/hadoop-env.sh`
# Calculate recommendations for the Movie Lens Data Set

$ ./scripts/ml100k-recs.sh
