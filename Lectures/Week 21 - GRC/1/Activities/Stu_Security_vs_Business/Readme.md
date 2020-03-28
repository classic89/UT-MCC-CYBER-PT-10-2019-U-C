# Guided Practice: Weighing Security and Business Objectives 

## Instructions

Welcome! 

In this exercise, you'll play the role of a **Security Consultant** hired to help a financial services firm called _GeldCorp_ decide how risky its business plans are. They've provided a list of plans and want you to explain the security implications of each one and advise which projects they should pursue and which they should cancel.

In addition, they've provided what their security department suggests they should do to make the organization more secure. They've asked that you take a look at these as well and tell them which suggestions are good and which are overkill.

For each suggestion, consider:

- Whether it leads to improved or reduced security;

- Whether the improvement in security is merited. (What are the advantages and why do they matter?);

- How much work will it take to implement;

Then, decide if the business should proceed with the project and justify your verdict.

#### Business Plans

GeldCorp provided the following business plans and security suggestions below:

- The business wants to **give all developers access to all data**. This request was made by the Director of Engineering. She suggests that the free access will help her teams move faster and help her managers cut costs by delegating work more efficiently.

- The Director of IT wants to make administration servers accessible from public IP addresses, instead of just from within the corporate subnets. He argues that this set up facilitate his administrators, many whom work remote, to connect to the servers they need to manage. He expects this feature to improve retention and hopes to see an uptick in hours on the clock.

- Currently, your company saves emails to several different mail servers. Your newest SOC Analyst wants to merge all these servers into a single database, hosted on a single machine. She argues that this set-up will improve efficiency by making it easier to monitor the database and save money by reducing the number of machines on the network.

#### Security Suggestions

- The Director of Security suggested implementing a private, corporate VPN. Since the company has grown to over 300 employees, she argues that it's increasingly critical to ensure confidential information remains hidden. The project would imply significant changes to the company's networking infrastructure, and require onboarding all employees with the VPN. The advantage is that the business would have tighter control over communications to/from its core networks.

- In addition to merging mail servers, your SOC Analyst suggested hardening the server in the following ways:

  - Encrypting all stored emails

  - Only Allowing Machines on the Corporate Network (or VPN) to Download Mail

- The Director of Engineering suggested forcing all developers to use SSH keys instead of passwords to communicate with internal SSH servers. She plans to disable password access in two weeks.
