## Solution Guide: Tracing Traceroute



### Solutions: 

Follow the instructions below to complete the task.
- Open [Resources/traceroute.pcapng](Resources/traceroute.pcapng) in Wireshark.

Find the first packet sent by your machine, and identify the following:
  - Your **source IP address**
  - The destination IP address
  - The packet's TTL value

**Solutions**
- **Source IP Address**: `192.168.100.138`
- **Destination IP Address**: `4.2.2.1`
- **TTL**: 1

Find the _response_ to this request, and identify the following:
  - The **source IP address**
  - The **ICMP message type** and **code**
**Solutions**
- **Source IP Address**: `192.168.100.1 `
- **Response ICMP Message Type/Code**: `ICMP Time-to-Live Exceeded (Code 11)``


Repeat the above for the next four requests sent from your machine, and verify that the IP addresses of each router along the path.

 **Solutions**: The IP addresses in the file are:

| **Hop** | **IP Address** |
|---------|----------------|
| 1       | 192.168.100.1  |
| 2       | 12.180.241.1   |
| 3       | 12.153.21.202  |
| 4       | 12.86.61.157   |
| 5       | 12.122.133.110 |

All of these IP addresses are as expected, except for number 3. We observe `12.153.21.202`, but expect `14.135.12.265`.

Since the rest of the addresses act as expected, one might conclude that changing the network configuration caused the optimal routing path to change.
