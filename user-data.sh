#!/bin/bash
sudo su
yum update -y
yum install -y httpd
yum install git -y
cd /var/www/html
git clone https://github.com/elvisvukesu/beach-wave
cp -r beach-wave/* /var/www/html/
rm -rf beach-wave
systemctl enable httpd 
systemctl start httpd
chkconfig httpd on
