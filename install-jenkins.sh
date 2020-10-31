apt-get install default-jdk
apt-get install -y apt-transport-https
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ >> /etc/apt/sources.list
apt-get update
apt-get install -y jenkins
