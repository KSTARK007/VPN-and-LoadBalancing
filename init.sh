#!/bin/bash
install_nginx() {
sudo apt-get update
sudo apt-get install -y nginx
}

set_server() {
  sudo rm /usr/share/nginx/html/index.html
  sudo cp /vagrant/index.html /usr/share/nginx/html/index.html
  sudo echo "<h1 style=\"margin-top: 10%;\">">>/usr/share/nginx/html/index.html
  sudo echo $1 >> /usr/share/nginx/html/index.html
  sudo echo "</h1></body></html>">>/usr/share/nginx/html/index.html
  sudo chmod 777 /vagrant/server_update.sh
}

server_config(){
  echo "upstream web_backend {
   server 10.11.12.51;
   server 10.11.12.51;
   server 10.11.12.52;
   server 10.11.12.52;
   server 10.11.12.53;
   server 10.11.12.53;
  }

  server {
  listen 80;
  location / {
  proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
  proxy_pass http://web_backend;
  }
  }" | sudo tee /etc/nginx/sites-available/default
  sudo service nginx reload 
}

install_nginx
set_server $1
if [ $1 == "lb" ]; then
    server_config
fi

