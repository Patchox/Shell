#!/bin/bash
apt-get install lsb-release -y 
sed -i 's/#PrintMotd yes/PrintMotd no/g' /etc/ssh/sshd_config
echo "/usr/local/bin/dynmotd" >> /etc/profile
rm /usr/local/bin/dynmotd
cd /usr/local/bin/
wget https://patch0x.fr/Partage/dynmotd --no-check-certificate
chmod +x /usr/local/bin/dynmotd