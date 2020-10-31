#create tomcat user and group
groupadd tomcat
useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
# install tomcat
cd /tmp
apt install -y curl
curl -O https://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.22/bin/apache-tomcat-9.0.22.tar.gz
mkdir /opt/tomcat
tar xzvf apache-tomcat-9.0.22.tar.gz -C /opt/tomcat --strip-components=1
#update permission
cd /opt/tomcat
chgrp -R tomcat /opt/tomcat
chmod -R g+r conf
chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/
#Create a systemd Service File
/etc/systemd/system/tomcat.service
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking

Environment=JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/tomcat
Environment=CATALINA_BASE=/opt/tomcat
Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh

User=tomcat
Group=tomcat
UMask=0007
RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target

systemctl daemon-reload
systemctl start tomcat
systemctl status tomcat

 systemctl enable tomcat
 systemctl start tomcat
 #configure tomcat web interface 
