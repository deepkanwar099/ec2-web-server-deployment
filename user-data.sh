#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>XYZ Media Solutions Web Server</h1>" > /var/www/html/index.html
echo "<p>Server Name: $(hostname -f)</p>" >> /var/www/html/index.html
