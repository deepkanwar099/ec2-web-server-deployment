# 🚀 Automated Web Server Deployment on AWS EC2

## 📌 Project Overview
This project demonstrates how to deploy a web server on AWS EC2 using Amazon Linux. The server is automatically configured using EC2 User Data to install and run Apache. Security best practices such as IAM roles and restricted security group access are implemented.

---

## 🧠 Problem Statement
XYZ Media Solutions wanted to migrate their website to the cloud for better scalability, availability, and reduced infrastructure management.

---

## 🏗️ Architecture
![Architecture Diagram](architecture-diagram.png)

The system includes:
- User accessing website via internet
- Security Group acting as firewall
- EC2 instance running Apache
- IAM role for secure AWS access
- User Data for automation

---

## ⚙️ Deployment Steps
1. Launched EC2 instance (Amazon Linux, t3.micro)
2. Configured Security Group:
   - SSH (22) → My IP
   - HTTP (80) → Anywhere
3. Attached IAM Role:
   - AmazonS3ReadOnlyAccess
   - AmazonSSMManagedInstanceCore
   - CloudWatchAgentServerPolicy
4. Added User Data script
5. Connected via SSH
6. Deployed website in `/var/www/html`

---

## 🔐 Security Implementation
- Restricted SSH access to My IP
- Allowed HTTP access publicly
- Used IAM Role instead of access keys
- Followed least privilege principle

---

## ⚡ Automation (User Data)
```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>XYZ Media Solutions Web Server</h1>" > /var/www/html/index.html
echo "<p>Server Name: $(hostname -f)</p>" >> /var/www/html/index.html
