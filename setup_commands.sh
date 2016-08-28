cd /vagrant
sudo yum -y localinstall jdk-8u60-linux-x64.rpm
tar xzvf nifi-1.0.0-BETA-bin.tar.gz
./nifi-1.0.0-BETA/bin/nifi.sh start
