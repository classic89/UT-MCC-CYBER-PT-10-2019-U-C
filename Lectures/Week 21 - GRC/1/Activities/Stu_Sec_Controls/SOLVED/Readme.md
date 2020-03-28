### Review Security Controls

There are multiple solutions. Ask students to share their solutions and use the following as starting points for discussion.
  
  - **Implement a Turnstile**: The organization could implement turnstiles in all of its data centers. These turnstiles would only allow one person through at a time and require employees to scan an ID card to step through. This requires installing the system at all sites, and issuing keycards to all employees, both of which incur significant overhead. However, a financial organization might deem the added security of such _physical access controls_ well worth it.
  
  - **Encrypt Top-Secret Data**: The attacker wouldn't have been successful if they'd broken into the data facility and stolen _encrypted_ financial records. The organization could choose to encrypt all of its top-secret data, and only allow it to be decrypted by a single server, verified by digital signature. As an _advanced_ note, the company could then choose to allow access to that decrypted data via API, and restrict access to this API to only trusted individuals. This is a _technical control_.

- Emphasize that these suggestions could be implemented _on top of_ or _separately from_, the training solution. "Stacking" solutions that address the problem in different ways strengthens your security perimeter and makes your system more robust to failure.

- Encourage students to remain attentive to such "multi-factor solutions", as they are generally more robust in practice.

Take a moment to address questions before proceeding.