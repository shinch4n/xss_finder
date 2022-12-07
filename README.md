# XSS FINDER 
---

Cross-Site Scripting (XSS) is one of the most well known web application vulnerabilities. It even has a dedicated chapter in the OWASP Top 10 project and it is a highly chased vulnerability in bug bounty programs.

The  `xss finder` gets a link from the user and scan the website for XSS vulnerability by injecting malicious scripts at the input place.

## Tools Use.....
---
List of tools   

* Subfinder
* Assetfinder
* Httpx
* Waybackurls
* Gau
* Gf with `[Patterns]`
* Gxss
* Dalfox

## How to use?
***
```
┌──(shinch4n㉿vibes)-[~]
└─$ ./xss.sh 
Enter Domain : testphp.vulnweb.com  <--- Enter your domain
Subdomain Enumeration Started
Subdomain Enumeration Finished
Finding Unique Domain...
Unique Subdomain Saved
Checking For Live Domains
```

## HOW TO INSTALL?
---
Clone the repository:
```
git clone https://github.com/shinch4n/xss_finder.git
```

Enter the clonned folder:
```
cd xss_finder
```
Give permissions:
```
chmod +x requirement.sh
chmod +x xss.sh
```
Install the dependencies:
```
./requirement.sh
```
Run the script:
```
./xss.sh
