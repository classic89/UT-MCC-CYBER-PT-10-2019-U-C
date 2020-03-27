# Exercise — Threat Modeling, Steps 1-4

Welcome!

Today, you’ll play the role of a security consultant contracted to advise a financial technology firm called GeldCorp.

Their finance department recently experienced a major breach and have already developed a training plan to address the problem. However, they would also like to make absolutely sure they don’t get hit with another unexpected breach in the future.

Your assignment is to help GeldCorp better understand where its core networks are most vulnerable to attack and advise them of what is most important to protect. 

You’ll do this by analyzing the business and its assets, then applying the OWASP Threat Modeling Process in a series of exercises throughout the day.

In this activity, you’ll read about the business and its assets, then apply Steps 1-4 of the OWASP Threat Modeling Process:

- **Understanding Assessment Scope**

- **Identify Threat Agents**

- **Identify Possible Attacks**

- **Identify Exploitable Vulnerabilities**

Get started by reading about the business and its assets below. Find the instructions for the threat modeling exercise after that.

Be sure to ask your instructors and classmates for help if you get stuck.

Good luck!

#### GeldCorp Overview

GeldCorp is a financial technology firm that helps clients manage and optimize their stock portfolios. They offer two main services:

- Custom Trading Platform: A web application that clients use to transfer money between their bank and trading accounts; buy and sell stock; and enable automated trading features.

- Financial Advising: GeldCorp also allows clients to purchase advisory services. This service gives them one in-person meeting with a financial advisor every quarter. It also grants them access to the Live Chat feature, which they can use from the web application to request advice 24/7.

GeldCorp offers these services separately, and therefore runs them as separate businesses. For this assignment, you’ll focus specifically on assessing the network assets that these businesses rely upon. Then, you’ll identify the threat agents, possible attacks, and exploitable vulnerabilities relevant to its most critical assets. 

Read the information below and answer the questions in the Threat Modeling section at the end of the document.

#### Network Infrastructure

**Corporate Intranet**: Refer to the topology below for a simplified diagram of the Corporate Intranet.


  ![Images/Diagram2.png](Images/Diagram2.png)

- Router (receives Internet, receives VPN, provides DHCP)
- Domain Controller (Windows AD “command center”)
- Department Routers (receive forwarded Internet, VPN)
  - Each department has an associated domain name
- Department Databases
  - Each department has private databases in their own subnets
  - All employees in a department have full access to all databases

- The entire network is managed with Windows Active Directory. The network and system administration team keep all systems fully patched at all times. GeldCorp does not enforce content filters, meaning that employees can visit any sites they want.

Note the following additional information:

- Each department has its own subnet.
- Employees who connect to the intranet from home must use the VPN.
- All employees in a given department have access to all of that department’s data servers.

**Web Application Infrastructure**

Refer to the topology below for a simplified diagram of the trading platform’s network infrastructure.

![/Images/networktopology.png](/Images/networktopology.png)

GeldCorp has a lot of clients, so it has several HTTP Servers instead of just one. This ensures the app doesn’t crash due to too many incoming HTTP requests.

The App Servers run the core web app, which lets users transfer funds to their trading accounts; buy and sell stock; and enable automated trading. This last feature requires the App Servers to also run GeldCorp’s top-secret trading algorithms.

The Database stores the following PII about each user:

  - Name, address, and phone number, and SSN. Used to automate bank transfers.

  - Account Balance, which records how much cash the user has to buy stocks. 

  - Portfolio Data, including which stocks each user owns, and how much each is worth.

  - Trading History. This is a record of every trade the user has made. Account Advisors and automated trading algorithms use this to make trades for their clients.
  

Note the following additional details:

- These applications are built entirely in-house, including code used to process user input. In other words: GeldCorp does not use frameworks. They only build from scratch.

- All of the servers run on top of Linux. They are all fully patched and hardened.

- These applications have never been pentested, but IR has identified no breaches thus far.

#### Questions:
In reading the above, you’ve completed **Step 1** of the **OWASP Threat Modeling** process, which is to familiarize yourself with the Assessment Scope.

Follow the instructions below to complete **Steps 2-4** for both the corporate intranet and web application infrastructure.

#### Web Application Infrastructure:

1. Identifying the most important assets on the web application network:

      **Identify Threat Agents**: List **three** threat agents relevant to the web application.
 
      **Identify Possible Attacks**: List **five** attacks relevant to the web application and which threat agent is most likely to use each one.

      **Identify Exploitable Vulnerabilities**: Identify **three** possible vulnerabilities in the web application infrastructure, and rank them in order of severity. Explain how each one could be exploited.

##### Corporate Intranet

2. Identifying the most important assets on the corporate intranet:

    **Identify Threat Agents**: List three threat agents relevant to the intrane: 

    **Identify Possible Attacks**: List **three** attacks relevant to the intranet, and which threat agent is most likely to use each one.

    **Identify Exploitable Vulnerabilities**: Identify **three** possible vulnerabilities in the intranet, and rank them in order of severity. Explain how each one could be exploited.