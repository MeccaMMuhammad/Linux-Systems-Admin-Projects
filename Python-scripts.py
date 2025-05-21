Project 1: Simple Port Scanner
Goal: Check if a list of ports are open on a target.

Step 1 : Create the Python File
nano port_scanner.py
Step 2: Add
import socket

target = '127.0.0.1'
ports = [22, 80, 443]

for port in ports:
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.settimeout(1)
    result = s.connect_ex((target, port))
    if result == 0:
        print(f"Port {port} is open")
    else:
        print(f"Port {port} is closed")
    s.close()
Step 3 : Run
python3 port_scanner.py

Project 2: System Resource Monitor 
Goal: Monitor CPU and memory usage.

Step 1: Install psutil
pip3 install psutil
Step 2: Create the script 
nano resource_monitor.py
Step 3: Add
import psutil

print(f"CPU Usage: {psutil.cpu_percent()}%")
print(f"Memory Usage: {psutil.virtual_memory().percent}%")
Step 4: Run
python3 resource_monitor.py

Project 3: Log File Analyzer
Goal: Search log files for errors and warnings.

Step 1: Create the python Script 
nano log_analyzer.py
Step 2: Add 
log_file = '/var/log/syslog'

with open(log_file, 'r') as file:
    for line in file:
        if 'error' in line.lower() or 'warning' in line.lower():
            print(line.strip())
Step 3 : Run 
python3 log_analyzer.py
