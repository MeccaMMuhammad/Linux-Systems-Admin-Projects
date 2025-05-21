Project 1: System Uptime Logger
Goal: Log system uptime every minute into a file.

Step 1: Create the script:
nano uptime_logger.sh
Step 2: Add
#!/bin/bash
echo "$(date) - Uptime: $(uptime -p)" >> uptime.log
Step 3: Make it executable
chmod +x uptime_logger.sh
Step 4: test run
./uptime_logger.sh
Step 5: Schedule with cron
crontab -e
Step 6: Add
* * * * * /home/user/uptime_logger.sh

Project 2 : Disk Space Alert
Goal: Alert if disk space usage exceeds a set threshold.

Step 1: Create the script:
nano disk_alert.sh
Step 2: Add 
#!/bin/bash
THRESHOLD=80
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Disk space critical: ${USAGE}% used!" | mail -s "Disk Alert" youremail@domain.com
fi
Step 3 : 
Install mailutils 
Step 4: Make it executable 
chmod +x disk_alert.sh
Step 5: test run
./disk_alert.sh

Project 3 : Service Status Checker 
Goal: Check if a specific service is running.

Step 1: Create the Script
nano service_check.sh
Step 2: Add
#!/bin/bash
SERVICE=cron
if systemctl is-active --quiet $SERVICE; then
  echo "$SERVICE is running."
else
  echo "$SERVICE is NOT running."
fi
Step 3 : Make it executable and test 
./service_check.sh
