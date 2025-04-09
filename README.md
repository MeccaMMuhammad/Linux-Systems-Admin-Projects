This lab demonstrates the process of creating and verifying a digital signature using OpenSSL on AlmaLinux. The scenario simulates a secure communication exchange between two users: Alice and Bob.

## 📌 Objectives
- Generate RSA private/public key pair
- Create a digital signature from a digest
- Verify the digital signature
- Simulate and observe signature verification failure

## 🛠 Tools Used
- AlmaLinux 9.1
- OpenSSL
- Bash (Terminal)

## 🧑‍💻 Lab Overview

### Alice (Sender):
1. Generate private and public keys
2. Create a digest file
3. Sign the digest to create a digital signature

### Bob (Receiver):
1. Receive digest, public key, and signature
2. Verify the signature using OpenSSL

### Signature Failure:
- Modify the digest file to simulate verification failure.

## 🗂 File Structure
