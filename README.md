In this exercise, I used Nmap (Kali Linux) to scan for unnecessary open ports on a Windows Server machine (ACIDM01) and then closed those ports using Windows Defender Firewall. Unnecessary open ports can be an entry point for attackers, so it's crucial to discover and close them to improve the security of the network.

Steps Taken:
Discover Unnecessary Open Ports using Nmap I used Nmap on a Kali Linux machine to scan for open ports on the ACIDM01 server. The goal was to identify ports that were open but not required by the system's intended functionality.

nmap -Pn 192.168.0.2
The -Pn option skips host discovery, focusing on the port scan.

Perform Aggressive Scan for More Information To gather more details about the open ports, I ran an aggressive scan (-A) on specific ports (80, 443, 3306) to identify running services and their versions.


nmap -Pn -A -p 80,443,3306 192.168.0.2
Apache was running on ports 80 and 443.

MySQL was running on port 3306.

These ports were not necessary for the server's intended role and needed to be closed.

Close Unnecessary Open Ports using Windows Defender Firewall After discovering the unnecessary open ports, I used Windows Defender Firewall to block these ports, improving the security of the system.

Steps:

Open Windows Defender Firewall.

Create a New Inbound Rule to block ports 80, 443, and 3306.

Apply the rule to all network environments.

Verify Closed Ports Finally, I verified that the ports were successfully closed by running the Nmap scan again.

nmap -Pn 192.168.0.2
