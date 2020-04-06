## Student Activity: Warm-Up Quiz

1. What is a program that would monitor every keystroke the victim enters?
    - [ ] Sniffer
    - [ ] Virus
    - [ ] Keylogger 
    - [ ] Smurf

2. Choose the **most** correct definition: What is a worm?

    - [ ] It's a form of eavesdropping between two network devices, involving spoofed packets.
    - [ ] It's a type of DoS attack sued to gain access, or shut down remote servers by overflowing them with random packets.
    - [ ] It's when malware is file-binded into applications or media files.
    - [ ] It's a self-replicating form of malware. 

3. Which of the following has the ability to replicate themselves?

    - [ ] Trojans
    - [ ] Viruses
    - [ ] Worms  
    - [ ] Zombies

4. Which of the following is a software that steals and sends peoples private information?

    - [ ] Ransomware
    - [ ] Spyware 
    - [ ] Worms
    - [ ] Zombies

5. True or False: The reason why Trojans are so affective is because the hacker is able to change the signature, and avoid detection?

6. Which of the following changes their signatures every time they replicate?

    - [ ] Ransomware
    - [ ]Spyware
    - [ ] Polymorphic Viruses 
    - [ ] Zombies

7. To be able to take control early in the boot process, some viruses reside in the

    - [ ] Memory
    - [ ] Boot sector
    - [ ]Flash drive
    - [ ] Hard disk

8. Which of the following is NOT a type of malware?

    - [ ] Worms
    - [ ] Spyware
    - [ ] Ransomeware
    - [ ] Bugs

9. Between Viruses and Worms, which are capable of spreading on their own, without the user having to interact with it?

10. Which of the following best describes a rootkit?

    - [ ] It's malware that uses social engineering techniques.
    - [ ] It's malware that intercepts packets in transit without being stored onto a target machine.
    - [ ] It's malware that propagates without a specific target.
    - [ ]  It's a type of malware that is used to backdoor a target machine while attempting to remain hidden 

11. Which of the following used to list all of the shared resources on a remote host?

    - [ ] Netstat
    - [ ]  Net view 
    - [ ] Network
    - [ ] Netcat

12. What is SNMP an acronym for?

    - [ ] Sender Null Modulation Protocol
    - [ ] Service Net Modulation Protocol
    - [ ] Simple Network Management Protocol 
    - [ ] Simplified Node Management Protocol

13. Which argument will be used for OS detection in Nmap?

    - [ ]  -G
    - [ ]  -L
    - [ ]  -S
    - [ ]  -O  

14. A Null session is when someone connects with:

    - [ ] Username:admin, password:blank
    - [ ] Username:root, password:root
    - [ ] No username or password
    - [ ] Username:random, password:blank

15. What will the following nmap command accomplish? NMAP -sS -O -p 123,153 192.168.100.4

    - [ ] A stealth scan, opening port 123 and 153
    - [ ] A stealth scan, determine the operating system, and scanning of ports 123 and 153
    - [ ] A stealth scan checking all open ports excluding ports 123 and 153

16. What will the following nmap command accomplish? NMAP -sS -O -p 123-153 192.168.100.4?

    - [ ] A stealth scan, determine the operating system, and scanning of ports 123 through 153  
    - [ ] A TCP-connect scan, determine the operating system, and scanning of ports 123 and 153
    - [ ] A stealth scan checking all open ports excluding ports 123 and 153
    - [ ] A SYN scan, opening port 123 and 153

17. Which of the following best describes banner grabbing?

    - [ ] It is used to map a web server  
    - [ ] It is used to remove those ads from webpages
    - [ ] It is used to acquire embedded scripting from web pages
    - [ ] It is used to acquire HTML source code

18. An nmap scan of a server shows port 25 is open. Which of the following would be describe the risk if you were to leave the port open?

    - [ ] Web portal data leak
    - [ ] Clear text authentication
    - [ ] Open printer sharing
    - [ ] Active mail relay  

19. Regarding port enumeration, which port does DNS zone transfer use?

    - [ ] UDP port 161
    - [ ] TCP/UDP port 389
    - [ ] TCP port 137
    - [ ] TCP port 53  

20. Which of the following is best sed to describe analyzing a firewall for vulnerabilities?

    - [ ] Firewalking  
    - [ ] Firewalling
    - [ ] Firechalking
    - [ ] Firescaling

21. You are sent to scan  a remote host using nmap. Which of the following scan types is the BEST choice to gather the most information while minimizing the chance of detection?

    - [ ] TCP connect scan (-sT)
    - [ ] Xmas scan (-sX)
    - [ ] UDP scan (-sU)
    - [ ] SYN scan (-sS)  

22. You are asked to access a server at a particular IP address. The server does not respond to ping requests, what could be the reason(s)? (PLEASE SELECT ALL THAT APPLY)

    - [ ] The host is down 
    - [ ] Server configured not to respond to ping 
    - [ ] Firewall blocks TCP
    - [ ] Firewall blocks ICMP  

23. Which command would you issue to scan all TCP ports on 192.168.1.1?

    - [ ] nmap -p 0,65535 192.168.1.1
    - [ ] nmap -p 1,65536 192.168.1.1
    - [ ] nmap -p 192.168.1.1
    - [ ] nmap -p 0-65535 192.168.1.1  

24. Which of the following nmap arguments are used to perform a Null scan:

    - [ ] -sS
    - [ ] -sP
    - [ ] -sN  
    - [ ] -sF

25. To perform a 'FIN scan' in nmap, which of the following arguments would you use?

    - [ ] -SF
    - [ ] -fs
    - [ ] -sF  
    - [ ] -FIN

26. Most scan attempts can be detected and flagged by:

    - [ ] Proxy
    - [ ] IDS 
    - [ ] Router
    - [ ] Switch

27. Which of these scan types in nmap would make a full TCP connection to the target system?

    - [ ] XMAS scan
    - [ ] TCP connect scan 
    - [ ] All of these
    - [ ] SYN stealth scan
