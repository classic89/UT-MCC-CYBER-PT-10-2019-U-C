## Solution Guide: Warm-Up Quiz Review

### Questions with Solutions

1. What is a program that would monitor every keystroke the victim enters?
    - [ ] Sniffer
    - [ ] Virus
    - [x] Keylogger 
    - [ ] Smurf

2. Choose the **most** correct definition: What is a worm?

    - [ ] It's a form of eavesdropping between two network devices, involving spoofed packets.
    - [ ] It's a type of DoS attack sued to gain access, or shut down remote servers by overflowing them with random packets.
    - [ ] It's when malware is file-binded into applications or media files.
    - [x] It's a self-replicating form of malware. 

     **Explanation:**
    
     Worms are like viruses in that they self replicate and they hide themselves. However they are different in that they are usually hiding with sending traffic, or receiving traffic, or just replicating all over the place to actually consume bandwidth instead of having some type of destructive payload. They’re usually used more often in a denial of service type attack because when they replicate they may just start doing broadcast traffic.

3. Which of the following has the ability to replicate themselves?

    - [ ] Trojans
    - [ ] Viruses
    - [x] Worms  
    - [ ] Zombies

4. Which of the following is a software that steals and sends peoples private information?

    - [ ] Ransomware
    - [x] Spyware 
    - [ ] Worms
    - [ ] Zombies

5. True or False: The reason why Trojans are so affective is because the hacker is able to change the signature, and avoid detection?

	  - **True**


    **Explanation** Trojan construction kits help the hacker in creating their own Trojans or customize existing ones. The main purpose of this is to remain undetected through virus-scanning tools.

6. Which of the following changes their signatures every time they replicate?

    - [ ] Ransomware
    - [ ]Spyware
    - [x] Polymorphic Viruses 
    - [ ] Zombies

    **Explanation:**

    Upon infection, the polymorphic virus duplicates itself by creating usable, slightly modified, copy of itself.

7. To be able to take control early in the boot process, some viruses reside in the

    - [ ] Memory
    - [x] Boot sector
    - [ ]Flash drive
    - [ ] Hard disk

8. Which of the following is NOT a type of malware?

    - [ ] Worms
    - [ ] Spyware
    - [ ] Ransomeware
    - [x] Bugs

9. Between Viruses and Worms, which are capable of spreading on their own, without the user having to interact with it?

    - **Worms**

10. Which of the following best describes a rootkit?

    - [ ] It's malware that uses social engineering techniques.
    - [ ] It's malware that intercepts packets in transit without being stored onto a target machine.
    - [ ] It's malware that propagates without a specific target.
    - [x]  It's a type of malware that is used to backdoor a target machine while attempting to remain hidden 

11. Which of the following used to list all of the shared resources on a remote host?

    - [ ] Netstat
    - [x]  Net view 
    - [ ] Network
    - [ ] Netcat

12. What is SNMP an acronym for?

    - [ ] Sender Null Modulation Protocol
    - [ ] Service Net Modulation Protocol
    - [x] Simple Network Management Protocol 
    - [ ] Simplified Node Management Protocol

13. Which argument will be used for OS detection in Nmap?

    - [ ]  -G
    - [ ]  -L
    - [ ]  -S
    - [x]  -O  

14. A Null session is when someone connects with:

    - [ ] Username:admin, password:blank
    - [ ] Username:root, password:root
    - [x] No username or password
    - [ ] Username:random, password:blank

15. What will the following nmap command accomplish? NMAP -sS -O -p 123,153 192.168.100.4

    - [ ] A stealth scan, opening port 123 and 153
    - [x] A stealth scan, determine the operating system, and scanning of ports 123 and 153
    - [ ] A stealth scan checking all open ports excluding ports 123 and 153

16. What will the following nmap command accomplish? NMAP -sS -O -p 123-153 192.168.100.4?

    - [x] A stealth scan, determine the operating system, and scanning of ports 123 through 153  
    - [ ] A TCP-connect scan, determine the operating system, and scanning of ports 123 and 153
    - [ ] A stealth scan checking all open ports excluding ports 123 and 153
    - [ ] A SYN scan, opening port 123 and 153

17. Which of the following best describes banner grabbing?

    - [x] It is used to map a web server  
    - [ ] It is used to remove those ads from webpages
    - [ ] It is used to acquire embedded scripting from web pages
    - [ ] It is used to acquire HTML source code

18. An nmap scan of a server shows port 25 is open. Which of the following would be describe the risk if you were to leave the port open?

    - [ ] Web portal data leak
    - [ ] Clear text authentication
    - [ ] Open printer sharing
    - [x] Active mail relay  

19. Regarding port enumeration, which port does DNS zone transfer use?

    - [ ] UDP port 161
    - [ ] TCP/UDP port 389
    - [ ] TCP port 137
    - [x] TCP port 53  

	   **Solution**: DNS zone transfer uses TCP port 53.

20. Which of the following is best sed to describe analyzing a firewall for vulnerabilities?

    - [x] Firewalking  
    - [ ] Firewalling
    - [ ] Firechalking
    - [ ] Firescaling

21. You are sent to scan  a remote host using nmap. Which of the following scan types is the BEST choice to gather the most information while minimizing the chance of detection?

    - [ ] TCP connect scan (-sT)
    - [ ] Xmas scan (-sX)
    - [ ] UDP scan (-sU)
    - [x] SYN scan (-sS)  

    **Explanation:**

    The SYN scan, also known as "*half-open*" scan, is the best option for stealthy informative scanning using *nmap*. The SYN scan initiates TCP connections to the target, but never completes them. Each port that responds with SYN/ACK is marked as open, while a RST response indicates a closed port. The TCP connect scan carries a higher likelihood of detection since it fully establishes TCP connections, which may be logged by the host. Both UDP and Xmas scans can more stealthy than SYN scans in some cases, but the way UDP and Xmas scans work do not provide as much clearly defined information as TCP scanning methods. For more information, review the nmap documentation for port scanning techniques: https://nmap.org/book/man-port-scanning-techniques.html E

22. You are asked to access a server at a particular IP address. The server does not respond to ping requests, what could be the reason(s)? (PLEASE SELECT ALL THAT APPLY)

    - [x] The host is down 
    - [x] Server configured not to respond to ping 
    - [ ] Firewall blocks TCP
    - [x] Firewall blocks ICMP  

23. Which command would you issue to scan all TCP ports on 192.168.1.1?

    - [ ] nmap -p 0,65535 192.168.1.1
    - [ ] nmap -p 1,65536 192.168.1.1
    - [ ] nmap -p 192.168.1.1
    - [x] nmap -p 0-65535 192.168.1.1  

24. Which of the following nmap arguments are used to perform a Null scan:

    - [ ] -sS
    - [ ] -sP
    - [x] -sN  
    - [ ] -sF

    **Solution**: -sS is used to perform a SYN stealth (TCP half-open) scan. -sF is used to perform a FIN scan. -sP is used to perform a ping (ICMP) scan.

25. To perform a 'FIN scan' in nmap, which of the following arguments would you use?

    - [ ] -SF
    - [ ] -fs
    - [x] -sF  
    - [ ] -FIN

26. Most scan attempts can be detected and flagged by:

    - [ ] Proxy
    - [x] IDS 
    - [ ] Router
    - [ ] Switch

27. Which of these scan types in nmap would make a full TCP connection to the target system?

    - [ ] XMAS scan
    - [x] TCP connect scan 
    - [ ] All of these
    - [ ] SYN stealth scan

- Take a moment to address remaining questions before proceeding.
