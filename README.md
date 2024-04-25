# Capsonte Project

## Overview
The Capstone project is aimed at demonstrating a multi-stage attack scenario targeting Microsoft 365 environments. The attack involves utilizing Evilginx for phishing lure creation to obtain initial access by capturing the credentials and cookies of the targeted user. Afterward, Hoaxshell is used to obtain a payload that establishes remote shell access. To deliver this payload, a fake VPN script is created. To circumvent security measures like execution policy, the PowerShell script is converted into a single-line encoded PowerShell command and executed from a malicious .bat file.

## Components
1. **Evilginx:** Used for creating phishing lure URLs to capture user credentials and cookies.
2. **Hoaxshell:** Used to obtain a payload for establishing remote shell access.
3. **Fake VPN Script:** Created to deliver the payload, disguising it as a legitimate VPN script. Used to obtain malicious payload containing all of this.
4. **Encoded PowerShell Command:** Used to execute the payload from a malicious .bat file, bypassing execution policies.
5. **Cookie Decryptor:** Used to decrypt and extract all Chrome cookies.

## Usage
1. **Evilginx Setup:** Configure Evilginx to create phishing URLs targeting Microsoft 365 login pages.
2. **Phishing Campaign:** Launch a phishing campaign to lure targeted users into entering their credentials.
3. **Payload Generation:** Utilize Hoaxshell to generate a payload for establishing remote shell access.
4. **Encoding PowerShell Command:** Convert the PowerShell script into a single-line encoded PowerShell command.
5. **Execution:** Execute the encoded PowerShell command from the malicious .bat file to establish remote shell access.
6. **Cookie Decryptor:** Used to decrypt and extract all Chrome cookies.

## Disclaimer
This project is intended for educational and research purposes only. Unauthorized use of this project for malicious purposes is strictly prohibited. The authors of this project are not responsible for any misuse or damage caused by its implementation.
