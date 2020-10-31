# Add VirtualBox PPA
apt-add-repository 'deb http://download.virtualbox.org/virtualbox/debian stretch contrib'
# Import Oracle public key
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
apt-get update
# Install VirtualBox
apt-get install -y virtualbox-6.2
# verify the installation of VirtualBox
echo "*******Installation Complete**********"
VBoxManage --version
