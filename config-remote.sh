## config remote access

sudo lsof -i | grep mongo

sudo ufw allow from 192.168.1.42 to any port 27017

sudo ufw status

sudo vim /etc/mongod.conf

# network interfaces
#net:
#  port: 27017
#  bindIp: 127.0.0.1,server_ip

sudo systemctl restart mongod