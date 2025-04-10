# Linux APT Package Management

This repository documents my learning experience with the APT package manager in Linux. I used this to manage applications like **Suricata** and **tcpdump** for network security. This includes installation, uninstallation, and verification of the applications.

## Lab Activity Overview

In this lab, I learned how to install and uninstall applications on a Debian-based Linux distribution using **APT**. This skill is crucial for a security analyst, as managing system applications and ensuring they are properly installed and configured is a key responsibility. 

## Key Tasks Covered

1. **Ensure APT is installed**
2. **Install and uninstall Suricata**
3. **Install tcpdump**
4. **List installed applications**
5. **Reinstall Suricata**

## Prerequisites

- A Debian-based Linux distribution (Ubuntu, Kali, etc.)
- Access to a terminal or Bash shell
- Root privileges (sudo) for installing/uninstalling applications

## Step-by-Step Code and Commands

### 1. **Ensure APT is Installed**
   To verify that **APT** is installed, I ran the following command:

   ```bash
   apt --version
