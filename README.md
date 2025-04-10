In this exercise, I identified a vulnerable application (Adobe Reader 8.1.1) on a Windows Server machine and simulated an attack using the Metasploit Framework. I also learned how to observe indicators of attack through event logs, which are critical for detecting and mitigating security threats.

Steps Taken:

1. Discover Vulnerable Applications I identified the recently installed Adobe Reader 8.1.1, which had a known security vulnerability (CVE-2007-5659). To simulate an attack, I first verified the vulnerability on a web portal.

URL to check CVE-2007-5659: NIST CVE-2007-5659

2. Simulate an Attack with Kali Linux I used Kali Linux to craft an exploit with the Metasploit Framework. The exploit created a malicious PDF file that I attempted to deliver to the vulnerable system. Although the exploit didn't succeed due to an OS mismatch, it demonstrated the importance of defending against outdated software vulnerabilities.

Steps to simulate the attack:

msfconsole
search adobe 8.1.1
use 0
show options
exploit

3. Verify Exploit Delivery After generating the malicious PDF (msf.pdf), I copied the file to the target system using SMB and attempted to open it, simulating the delivery of the exploit.

cp /home/aciadmin/.msf4/local/msf.pdf .
smbclient //192.168.0.3/Module_3_Folder -U Administrator
Observe Indicators of Attack Finally, I used Event Viewer on the target machine to observe indicators of attack. Even though the attack was unsuccessful, the logs showed how an attacker could deliver a weaponized PDF, and it revealed the presence of the vulnerable application.

4. Steps to view event logs:

Open Event Viewer on the target machine.

Navigate to Windows Logs > Application and observe errors related to AcroRd32.exe (Adobe Reader).
