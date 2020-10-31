apt-get install -y wget
cd /opt
wget https://www-eu.apache.org/dist/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz
tar xzvf apache-maven-3.6.1-bin.tar.gz
echo "export PATH=/opt/apache-maven-3.6.1/bin:$PATH" >> /etc/profile
source /etc/profile
mvn --version
