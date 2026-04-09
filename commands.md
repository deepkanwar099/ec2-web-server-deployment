```bash
ssh -i xyz-web-key.pem ec2-user@<public-ip>

# Install Apache
yum update -y
yum install -y httpd

# Start service
systemctl start httpd
systemctl enable httpd

# Check status
systemctl status httpd

# Troubleshooting
sudo systemctl stop httpd
sudo systemctl start httpd
sudo netstat -tulpn | grep 80

# System info
df -h
free -m
