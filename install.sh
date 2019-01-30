!#/bin/shell
echo "Hello Team"

echo " ----- Installing NGINX -----"
sudo apt update
sudo apt install nginx
sudo ufw allow 'Nginx HTTP'
echo " ----- NGINX is Up and running-----"
echo "Commands to look at NGINX: systemctl status/stop/start nginx"
