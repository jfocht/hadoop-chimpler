Hadoop Introduction materials from Chimpler blog posts.

### Getting Started

Fetch the dependencies

$ ./scripts/fetch-deps.sh

Ensure that `JAVA_HOME` is set at the system level or set it in
`hadoop-1.1.2/conf/hadoop-env.sh` then start the Hadoop cluster.

$ ./scripts/start.sh

### Movie Lens Recommendations

<http://chimpler.wordpress.com/2013/02/20/playing-with-the-mahout-recommendation-engine-on-a-hadoop-cluster/>

$ ./scripts/ml100k-recs.sh
