cd /vagrant
JAVA_RPM=jdk-8u102-linux-x64.rpm
NIFI_VER=nifi-1.0.0-BETA
NIFI_TAR=$NIFI_VER-bin.tar.gz

# DL and install java
[ ! -f $JAVA_RPM] && curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/9u103-b14/$JAVA_RPM > $JAVA_RPM
sudo yum -y localinstall $JAVA_RPM

# DL and install nifi
[ ! -f $NIFI_TAR ] && wget http://mirror.serversupportforum.de/apache/nifi/1.0.0-BETA/$NIFI_TAR
tar xzvf $NIFI_TAR -C /opt
cd /opt
#./$NIFI_VER/bin/nifi.sh start
