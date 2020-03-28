# Exercise — Threat Modeling, Steps 1-4

#### Instructions
In reading the above, you’ve completed **Step 1** of the **OWASP Threat Modeling** process, which is to familiarize yourself with the Asessment Scope.

Follow the instructions below to complete **Steps 2-4** for both the corporate intranet and web application infrastructure.

###### Web Application Infrastructure


**Identify Threat Agents**k

List **three** threat agents relevant to the web application.
- **Script Kiddies** are a risk to any website. They're unsophisticated, and don't have a lot of money, so they're fairly harmless, unless there are easily exploitable vulnerabilities in the client-side web application.
- **Organized Cyberriminals** might specifically target _GeldCorp_ because they manage money and equity transfers. These attackers are well-motivated, and skilled enough to identify and exploit subtle security holes.
- **Insider Threats** are worth considering. Recall that all employees in a given department can access all of that department's data. This means that an engineer on the front-end web team would be able to read the code behind the automated trading algorithms, which the company considers top secret. This is a problem, because that engineer can now leak those secrets, even though he didn't need access to them in the first place.


**Identify Possible Attacks**

List three attacks attackers might attempt against the web application. Explain what the attacker gains from the attack.
- **DDoS**: The Trading Platform must respond to the market in real time. Taking down the web application through a DDoS attack would have serious impact on the business's reputation. This is most likely to come from script kiddies.
- **Dumping the Database**: Attackers might attempt to use SQL injection to dump the database to steal social security numbers. Script kiddies and more sophisticated attackers might both try this attack.
- **XSS**: The application probably has an XSS vulnerability, 

**Identify Exploitable Vulnerabilities**

- Identify **three** possible vulnerabilities in the web application infrastructure, and rank them in order of severity. Explain how each one could be exploited.
- The **app server** is probably vulnerable to XSS vulnerabilities. These can be used to steal user cookies and hijack their sessions.
- The **database** is probably vulnerable to SQL injection. This could be exploited to dump confidential PII.
- _GeldCorp_ did _not_ state that the **database** was encrypted. If attackers dump the database, they'll immediately have access to confidential PII in plaintext.

##### Corporate Intranet


**Identify Threat Agents**

List three threat agents relevant to the intranet.
- **Script Kiddies**
- **Organized Cyberriminals**
- **Insider Threats**


**Identify Possible Attacks**

List **three** potential attacks against the Intranet.
- **Phishing**: An attacker might try to gain access to the private intranet by phishing employees.
- **Malware**: Attackers might use malware to infect the intranet. For example, they may infect it with ransomware.
- **Physical Attacks**:  Attackers might be able to gain physical access to the building.


**Identify Exploitable Vulnerabilities**

Identify **three** possible vulnerabilities in the intranet, and rank them in order of severity. Explain how each one could be exploited.
- **No Content Filter**: Employees can download files from any site they want. This makes it much easier for attackers to introduce malware.
- **Poor Access Control Policies**: Every employee in a department should not have access to all of that department's data.
- **Older Workstations**: Windows 7/8 machines are more vulnerable than newer versions.
