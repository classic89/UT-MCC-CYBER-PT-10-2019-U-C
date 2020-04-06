# Exercise — Matching Tasks to Phases

Welcome!

In this exercise, you'll play the role of a **security analyst** at _X Corp_ responsible for identifying which reports of malicious activity should be mitigated first.

You will be solving this problem because _X Corp_ has identified more incidents than it has resources to respond to, and thus must prioritize which issues to address now and which to defer until later.

Your task is to read the below descriptions of malicious activity and identify which phase of the hacking cycle each attacker is in. Then, you'll determine which three are closest to breaching the network.

Be sure to ask your instructors and classmates for help when you get stuck.

**Good luck!**

## Instructions
Read the descriptions of suspicious activity below, and identify which phase of the hacking cycle each is most likely to occur.

- An unidentified machine on the corporate intranet has been sending requests for lists of usernames to all administrative servers on the  network.
  > **Solution**: This occurs during **Information Gathering**. However, if the attacker is performing reconnaissance on an _internal_ network, they've already managed to exploit at least one machine. This means they are already in the organization, and should be contained promptly.

- The SOC Team noticed that an administrative server on the private network has been sending HTTP traffic from port 8080, but the IT Team said they only run HTTP on port 80.
  > **Solution**: This most likely indicates that the attacker has infiltrated the network, started their own HTTP n the admin machine, and has already begun exfiltrating data. This occurs during **Post-Exploitation**.

- _X Corp_ tunnels all traffic to and from the corporate intranet through a VPN server. This VPN server has been hit with numerous Nmap scans from the same IP this week.
  > **Solution**: This occurs during the **Intelligence Gathering** phase.

- The VPN server has SSH enabled. The logs indicate someone has attempted to brute-force the SSH server recently, but has not yet managed to break in.
  > **Solution**: This occurs during the **Exploitation** phase of an attack.

- A user of _X Corp's_ public website recently reported that someone had hacked into their account and changed their profile information, including their password.
  > **Solution**: This occurs during the **Exploitation** and **Post-Exploitation** phases of an attack.

  > **Solution**
  > Based on the phases identified above, _X Corp_ should prioritize the issues as follows:
  >   - Kill the HTTP server on the administrative machine
  >   - Identify and blacklist who is performing reconnaissance on the internal network
  >   - Patch the vulnerability on the web server
  >   - Harden the SSH server on the VPN machine
  >   - Strengthen the firewall in front of the VPN to reduce the impact of NMAP scans
