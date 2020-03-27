# Weighing Security and Business Review Objectives

- Ask students to provide their responses to each question. As you move through each situation, explain the sample answers provided below.

#### Business Plans

- The Director of Engineering suggested giving all developers access to all data. 
    
    - **Benefits**: is that this makes development easier. 
    
    - **Detractors**: It allows _any_ developer to access _any_ user data, including sensitive PII that has nothing to do with their jobs. 
    
    - **Recommended Decisions**: The business should **reject** on grounds of privacy.

- For the second situation, the Director of IT suggested exposing administration servers to the public Internet. 

    - **Benefits:** Administrators can work from any computer they choose. 
    
    - **Detractors:** The servers would be publicly accessible, which is obviously unacceptable for a private network. 
    
    - **Recommended Decisions**: The organization should **reject** this request outright. A VPN would be a better solution to this problem.

- In the third situation, an SOC analyst recommended merging all of the company's mail servers into a single server, in order to cut costs and improve SOC efficiency. 

  - **Benefits:** It would ultimately cost less and reduce; the number of servers that attackers could potentially compromise; the number of machines that could expose vulnerabilities; and the number of machines that SOC has to monitor.

  - **Detractors**: If the company has so many emails that it _needs_ to maintain multiple servers, this suggestion is obviously not possible. Otherwise, hosting all of the data on a single machine makes sense. 
    
#### Security Suggestions

- The Security team suggested hardening the merged mail server via either encryption or placing the mail server behind a firewall, and only allowing access from the corporate VPN.
  
    - In general, encryption is not a good idea. It requires a lot of power to encrypt and decrypt data, and email doesn't ordinarily contain confidential data. On the other hand, selectively encrypting emails that do contain encrypted data makes sense.
  
    - Only allowing access to the mail servers from the corporate VPN also seems a bit like overkill. Again, email ordinarily does not contain confidential information, and so access shouldn't need to be so strictly controlled. However, this approach might make sense in intrinsically confidential scenarios, such as within government agencies; law firms; or medical records companies.

Take a moment to address questions before proceeding.