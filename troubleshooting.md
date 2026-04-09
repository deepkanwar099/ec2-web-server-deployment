# 🧪 Troubleshooting Incident: Website Not Accessible

## Issue
The website became inaccessible even though the EC2 instance was running.

---

## Investigation

### 1. Checked EC2 Instance Status
Instance was in **running state**, so the issue was not with the server being stopped.

---

### 2. Verified Security Group Rules
- HTTP (Port 80) was allowed from `0.0.0.0/0`
- SSH (Port 22) was restricted to my IP

👉 This confirmed that network access was correctly configured.

---

### 3. Checked Apache Service Status
```bash
systemctl status httpd
```

### 4. Verified Port 80 Listening
```bash
sudo netstat -tulpn | grep 80
```
### Where AI Helped 
- Suggested possible reasons why a website might not load even when the instance is running  
- Helped identify that the issue could be related to the Apache service  
- Guided which commands to use for checking service status and port usage  

---

### Root Cause
Apache web server was not running.

---

### Fix
```bash
sudo systemctl start httpd

---
```
### Verification
```bash
systemctl status httpd
