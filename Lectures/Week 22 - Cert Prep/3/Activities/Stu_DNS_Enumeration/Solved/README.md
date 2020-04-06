## Solution File: DNS Enumeration Review

###  Solutions

- Determine the net range and name server addresses of `megacorpone.com`.

    **Solution**: Run `whois megacorpone.com` to retrieves the following information:
    - Name Server: NS1.MEGACORPONE.COM
    - Name Server: NS2.MEGACORPONE.COM
    - Name Server: NS3.MEGACORPONE.COM

- Attempt a zone transfer against each name server you discover.
  
    **Solution**: Run the code below. Only `ns2.megacorpone.com` allows zone transfers.

      ```bash
      $ nslookup
      > server=megacorpone.com
      > set type=any
      > www.megacorpone.com
      ....
      ```

- Finally, use Netcraft to enumerate subdomains of `megacorpone.com`.
   
   **Solution**: Netcraft reveals the five domains below.
      
    - www.megacorpone.com
    -	intranet.megacorpone.com
    - admin.megacorpone.com
    -	support.megacorpone.com
    -	vpn.megacorpone.com
    
    **Note**: The Zone Transfer generated more results than Netcraft. Therefore, you should recommend that Mega Corp One secure their servers immediately.
