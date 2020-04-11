# Exercise — Tracing Traceroute

Welcome!

In this exercise, you'll play the role of a **network administrator** responsible for verifying that packets are routing as expected on your network.

You will be solving this problem because IT recently updated the network to speed up slow connections, and wants you to validate their work.

Your task is to inspect the provided capture, and verify that the IP address of the first five routers on the path are as expected.

You can find the capture file in [Resources/traceroute.pcapng](Resources/traceroute.pcapng).

The expected IP addresses are provided below.

| **Hop** | **IP Address** |
|---------|----------------|
| 1       | 192.168.100.1  |
| 2       | 12.180.241.1   |
| 3       | 12.153.21.202  |
| 4       | 12.86.61.157   |
| 5       | 12.122.133.110 |

Be sure to ask your instructors and classmates for help when you get stuck.

**Good luck!**

## Instructions
Follow the instructions below to complete the task.
- Open [Resources/traceroute.pcapng](Resources/traceroute.pcapng) in Wireshark.

- Find the first packet sent by your machine, and identify the following:
  - Your **source IP address**
  - The destination IP address
  - The packet's TTL value
  - The **ICMP message type** and **code** on the response

- Find the _response_ to this request, and identify the following:
  - The **source IP address**
  - The **ICMP message type** and **code**


- Repeat the above for the next four requests sent from your machine, and verify that the IP addresses of each router along the path.
