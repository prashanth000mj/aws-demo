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
rm -f /etc/nginx/sites-available/default
cp ./default /etc/nginx/sites-available/default
sudo systemctl restart nginx


echo " ---- Building Jar/App -----"
cd myApp
mvn clean install
cd ..
echo " ---- Deploying Jar/App -----"
cd target
java -jar myproject-0.0.1-SNAPSHOT.jar
