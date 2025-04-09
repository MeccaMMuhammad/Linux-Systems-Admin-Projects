## 📌 Objectives
- Generate a private key and CSR
- Simulate a Certificate Authority
- Approve and sign the CSR
- Return a signed certificate to the requester

## 🛠 Tools Used
- AlmaLinux 9.1
- OpenSSL
- Bash (Terminal)

## 🧑‍💻 Lab Overview

### SecPlusLLC:
1. Generate private key and CSR using OpenSSL
2. Submit CSR to CA (simulated by directory transfer)

### Certificate Authority (CA):
1. Generate private key
2. Approve CSR and sign it to generate a certificate
3. Return the signed certificate to SecPlusLLC
