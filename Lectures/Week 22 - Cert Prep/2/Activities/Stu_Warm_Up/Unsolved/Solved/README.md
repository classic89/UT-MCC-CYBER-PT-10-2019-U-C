# CEH Warm-Up quiz

## Questions
- Which type of hacker is considered unethical?
  - [ ] White Hat
  - [ ] Grey Hat
  - [x] Black Hat
  - [ ] Blue Hat

- What is the main difference between ethical and malicious hackers?
  - [ ] Ethical hackers have written permission
  - [x] Ethical hackers have verbal permission
  - [ ] Ethical hackers don't use real exploits
  - [ ] Malicious hackers never perform information gathering

- Which type of testing takes place when pentesters have no knowledge of the target network?
  - [ ] Grey Box
  - [x] Black Box
  - [ ] White Box
  - [ ] Blind test

- You performed a full backup on Monday, and an incremental backup on Tuesday. If there is an outage on Wednesday, what do you need to restore operations?
  - [ ] Only the full backup from Monday
  - [x] the full backup from Monday and the incremental backup from Tuesday
  - [ ] Only the incremental backup from Tuesday

- Suppose an attacker alters the contents of two files on the server. Which of the following best describes what was compromised?
  - [ ] Authentication
  - [ ] Confidentiality
  - [x] integrity
  - [ ] Availability

- A SYN Scan is used in which kind of reconnaissance?
  - [x] Active Reconnaissance
  - [ ] Passive Reconnaissance
  - [ ] Open Source Information Gathering
  - [ ] Internal Reconnaissance

- How long is an IPv6 address?
  - [ ] 64 bits
  - [x] 128 bits
  - [ ] 256 bits
  - [ ] 32 bits

- How long is an IPv4 address?
  - [ ] 64 bits
  - [ ] 128 bits
  - [ ] 256 bits
  - [x] 32 bits

- An ICMP Type 8 message indicates which of the following?
  - [x] Ping Request
  - [ ] Router Advertisement
  - [ ] Host Unreachable Message
  - [ ] TTL Failure

- Which of the following ports is an attacker most likely to scan when attacking a Windows machine?
  - [x] 445/tcp
  - [ ] 53/udp
  - [ ] 80/tcp
  - [ ] 443/tcp

- Suppose you run a SYN scan against a target host. Which of the following best describes the state of connections to the target machine after the scan?
  - [x] Half-Open
  - [ ] Fully Open
  - [ ] Full Duplex
  - [ ] Half Duplex

- Which of the following is a Layer 2 attack?
  - [x] ARP Spoofing
  - [ ] SQL Injection
  - [ ] BGP Hijacking
  - [ ] Ping Sweep

- Which of the following would an attacker use to retrieve all DNS records from a nameserver?
  - [x] Zone Transfer
  - [ ] AAAA Request
  - [ ] CNAME Attack
  - [ ] DHCP Exhaustion

- You've determined that ports 80 and 443 on a target machine are open. What is the next step?
  - [x] Banner-Grab and Service-Scan Ports 80 and 443
  - [ ] Brute-Force Ports 80 and 443
  - [ ] Attempt to Exploit Ports 80 and 443
  - [ ] Scan for Additional Open Ports

- Which of the following Nmap flags is used for OS fingerprinting?
  - [x] `-A`
  - [ ] `-oN`
  - [ ] `-sS`
  - [ ] `-sU`

- Identify what the following Nmap command does: `nmap -sn 192.168.12.0/24`
  - [ ] Port-Scan all devices in `192.168.12.0/24`
  - [ ] Perform a UDP scan on `192.168.12.0/24`
  - [ ] Service-Scan `192.168.12.0/24`
  - [x] Perform a Ping Sweep on `192.168.12.0/24`

- Suppose you capture a packet from a system you're investigating. Its IP header is 20 bytes long, and it has a datagram length of 84 bytes. Which OS is most likely to have sent this packet?
  - [ ] Windows XP
  - [ ] Windows 10
  - [x] Linux
  - [ ] Solaris

- Suppose you run the following command. If port 22 is open, which TCP flag is set on the response?
  ```bash
  $ nmap -sS -p 22 192.168.12.7
  ```
  - [ ] ACK
  - [x] SYN
  - [ ] RST
  - [ ] URG

- Which of the following netcat commands banner-grabs the HTTP server of a target machine?
  - [ ] `ncat -lvp 2222`
  - [x] `ncat -v 192.168.12.8 80`
  - [ ] `ncat -v 192.168.12.8 8080 < cat /etc/shadow`
  - [ ] `ncat 192.168.12.8 443`

- Which of the following tools would an attacker use to poison a target's ARP cache?
  - [ ] Nmap
  - [ ] Kismet
  - [x] Cain & Abel
  - [ ] `enum4linux`
