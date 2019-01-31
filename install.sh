!#/bin/shell
echo "Hello Team"

echo " ----- Installing NGINX -----"
sudo apt update
sudo apt install nginx
sudo ufw allow 'Nginx HTTP'
echo " ----- NGINX is Up and running-----"
echo "Commands to look at NGINX: systemctl status/stop/start nginx"

echo " ---- Installing Maven and Java -----"
apt-get update
apt install software-properties-common -y
apt-get install -y default-jdk maven unzip

echo " ---- Setup Nginx -----"
cp ./myApp /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/myApp /etc/nginx/sites-enabled/myApp

