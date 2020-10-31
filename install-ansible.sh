# install with pip 
apt-get install -y python-pip
pip install ansible
ansible --version
#pip install --upgrade ansible

# install with apt
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt-get update
apt-get install -y ansible

# install with ppa
apt-get install -y software-properties-common
apt-add-repository -y --update ppa:ansible/ansible
apt-get update
apt-get install -y ansible

#install ansible with yum
yum install epel-release
yum install ansible
