# Exercise — TCP Split Handshake

Welcome!

In this exercise, you'll play the role of a **security analyst** _X Corp_ responsible for investigating suspicious activity on a compromised web server.

You will be solving this problem because a user recently reported that their account had been hacked. The IT team wants your help determining who was responsible, and how to prevent such incidents in the future.

Your task is to read the provided capture with Wireshark and identify the attacker's IP address. Then, you'll make a suggestion as to how to update firewall rules to prevent this kind of activity in the future.

You can find the PCAP in: [Resources/tcp_split_handshake.pcap](Resources/tcp_split_handshake.pcap).

Be sure to ask your instructors and classmates for help when you get stuck.

**Good luck!**

## Instructions
Follow the instructions below to complete the task.
- Open the capture in [Resources/tcp_split_handshake.pcap](Resources/tcp_split_handshake.pcap).

- Find the first packet send by the attacker, and identify their IP address.

- Identify the packets containing the split handshake response, and note the TCP flags that are set.

- Identify the packets that _end_ the connection.
  - Which TCP flags does the client send to close a connection?
  - What does a server send to confirm that it's ready to close the connection?
  - Which flags are set on the last two packets, and why?

- Finally, read the excerpt about split handshakes below, and answer the questions that follow.

 9. **Split Handshakes and Host Firewalls**

 Finally, each of test client hosts described in Section 3 were tested with their respective default host-based firewalls enabled, in order to determine the usefulness of the split-handshake with a normal, though possibly non-default, configuration for such clients.

  > **9.1 Microsoft and Apple Host Firewalls**
  > On Microsoft Windows XP, the Windows Firewall is enabled by default as of Windows XP Service Pack 2 (and 3). Enabling and disabling the firewall appears to have no effect on the acceptance of split-handshake sessions.
  >
  > Identical behavior was observed for Apple OS X, although as of the OS X "Snow Leopard" release, it is important to note the firewall is disabled by default.
  >
  > For both firewalls, there is no combination of standard options which can disallow servers using the split-handshake functionality while simultaneously allowing the normal three way handshake.

The web server is running Windows Server 2012. While this is different from XP, _X Corp_ uses the same firewall.
- Can IR do anything to easily detect this kind of behavior?
> **Solution**: According to the excerpt, it's difficult or impossible to configure standard firewalls to detect split-handshake activity.

- If so, what kind of firewall rule would you set?
> **Solution**: N/A.

- If not, what alternatives might you suggest?
  - **Hint**: Think about ways to filter traffic that don't rely only on reading TCP flags.
> **Solution**: Workarounds include:
>   - Install a **web application firewall**. This would filter traffic based on factors other than just the TCP flags and source/destination address information.
>   - In addition, _X Corp_ should update Windows Server 2012 to 2016 to upgrade their firewall.
>   - Finally, IR can use **anomaly detection** to detect suspicious activity. This is a technique that looks for abnormal behavior on the network, and _would_ be able to identify a v"strange" split handshake.
> Students aren't expected to be aware of anomaly detection at this stage, but you should explain it during review.
