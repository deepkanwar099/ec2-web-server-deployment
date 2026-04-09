# Troubleshooting Incident: Website Not Accessible

## Issue
Website became inaccessible even though EC2 instance was running.

## Investigation
- Checked EC2 status → Running
- Checked Security Group → HTTP allowed
- Checked Apache → Service stopped
- Checked port 80 → Not listening

## Root Cause
Apache service was stopped.

## Solution
Restarted Apache using:
sudo systemctl start httpd
