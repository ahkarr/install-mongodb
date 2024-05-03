## install mongodb
 sudo apt install software-properties-common gnupg apt-transport-https ca-certificates -y

curl -fsSL https://pgp.mongodb.com/server-7.0.asc |  sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

sudo apt-get update

sudo apt install mongodb-org -y

mongod --version

## start mongodb services
sudo systemctl status mongod

sudo systemctl start mongod

sudo ss -pnltu | grep 27017

sudo systemctl enable mongod