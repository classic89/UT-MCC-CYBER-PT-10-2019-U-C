## Solution Guide: Scanning and Enumeration Problem Set

### Questions

1. What does the Nmap `-sU` flag do?
    - [ ] Enable TCP scanning
    - [ ] Enable UDP Scanning
    - [ ] Enable Service Scanning
    - [ ] Banner-Grab All Ports on the Target

2. Which of the following is _not_ a part of information gathering?
    - [ ] Host Discovery
    - [ ] Finding Physical Addresses
    - [ ] Spidering the Client's Website
    - [ ] Exploiting a Database Server

3. Which of the following is also known as a Zombie scan?
    - [ ] SYN Scan
    - [ ] IDLE Scan
    - [ ] UDP Scan
    - [ ] Full-Connect Scan

4. Which of the following commands scans both TCP and UDP port 445?
    - [ ] `nmap -sT -sU -p 445 192.168.12.75`
    - [ ] `nmap -p U:445,T:445 192.168.12.75`
    - [ ] `nmap -sU -pU 445 -pT 192.168.12.75 `
    - [ ] `nmap -sS --all-protocols 192.168.12.75 `

5. Suppose you discover the following IP addresses on a target network: `192.168.1.24` and `192.168.1.35`. Both machines have a netmask of `255.255.255.0`. Which of the following is true?
    - [ ] The machines are on the same subnet.
    - [ ] The machines are on separate subnets.
    - [ ] The machines are unreachable from one another.
    - [ ] Neither machine is running Windows.

6. Which of the following scan types is used to infer firewall rules?
    - [ ] Full Connect Scan
    - [ ] ACK Scan
    - [ ] SYN Scan
    - [ ] IDLE Scan

7. Suppose you find ports 137, 138, and 139 open on a target machine. Which OS is it probably running?
    - [ ] Kali
    - [ ] Solaris
    - [ ] Ubuntu
    - [ ] Windows

8. Which of the following is commonly used for enumeration?
    - [ ] Hyena
    - [ ] John
    - [ ] IAM Tool
    - [ ] LCP

9. Which of the following hash types are you most likely to encounter when enumerating password hashes on a Windows machine?
    - [ ] NTLMv2
    - [ ] SHA512-Crypt
    - [ ] BlowFish
    - [ ] ElGamal

10. Which of the following protocols can be used to enumerate usernames? Check all that apply.
    - [ ] SMTP
    - [ ] SMB
    - [ ] DNS
    - [ ] IRC

11. Which of the following is a potential result of user enumeration? Check all that apply.
    - [ ] Brute-Force Attacks
    - [ ] Pass the Hash
    - [ ] Horizontal Escalation/Lateral Movement
    - [ ] DoS

12. Which of the following tools would you use to scan a target for vulnerabilities? Check all that apply.
    - [ ] `tcpdump`
    - [ ] Nessus
    - [ ] Nmap
    - [ ] Metasploit

13. Which tool would you use to enumerate SMB users on a Windows target from a Kali Linux machine?
    - [ ] `net`
    - [ ] `enum4linux`
    - [ ] `smbmap`
    - [ ] `dig`

14. Suppose you dump a Linux machine's `/etc/passwd` file during the information gathering phase. You see the lines `/bin/nologin` and `/bin/false` for many users. What does this mean?
    - [ ] These users don't exist.
    - [ ] These users exist, but aren't stored in the database.
    - [ ] These users exist, but can't use an interactive shell.
    - [ ] These users exist, but their accounts have been disabled.

15. Suppose you attempt to enumerate users on the website `www.foosports.com`. You're able to send 5 requests upon launching the attack, but stop receiving responses after that. What most likely happened?
    - [ ] The attack failed because the site doesn't have enough users to enumerate.
    - [ ] The target server blocked your IP address.
    - [ ] Your scan crashed the target server.
    - [ ] Your router no longer recognized the target IP address. 

16. Identify one advantage of an IDLE scan.
    - [ ] They allow an attacker to get information about a target's open ports without actually sending packets.
    - [ ] They allow an attacker to scan a target without revealing their IP address.
    - [ ] They are undetectable.
    - [ ] They can find all open ports on a machine, including those that are filtered by a firewall.

17. Identify two disadvantages to an IDLE scan.
    - [ ] They require more machines than a SYN scan.
    - [ ] They are unreliable.
    - [ ] They rarely work.
    - [ ] They are slow.

18. Which of the following tools allows you to enumerate URLs? Check all that apply.
    - [ ] Burp Suite
    - [ ] `dirb`
    - [ ] `wfuzz`
    - [ ] `kismet`

19. Which of the following tools is used for wireless attacks and enumeration?
    - [ ] `kismet`
    - [ ] PowerShell
    - [ ] zsh
    - [ ] ZAP Proxy

20. Which of the following commands runs all of Nmap's SMB scripts against a target?
    - [ ] `nmap --smb-all -sV -p 445 192.168.12.17`
    - [ ] `nmap --script --smb-scripts 192.168.12.17`
    - [ ] `nmap --script smb-enum-* -sV -p 445 192.168.12.17`
    - [ ] `nmap --script smb-enum-* 192.168.12.17`