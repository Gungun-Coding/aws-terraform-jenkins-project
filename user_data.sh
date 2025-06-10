yum update -y
yum install -y nginx
systemctl start nginx
systemctl stop nginx
echo "<h1> Deployed via jenkins and terraform </h1>" > /usr/share/nginx/html/index.html