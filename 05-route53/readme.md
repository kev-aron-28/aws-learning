# What is a DNS?

Domain Name system which translates the human friendly hostnames into the machine IP addresses

- It is the backbone of the internet
- Dns uses hierarchical naming structure

# DNS terminologies
- Domain registrar:
- DNS recods: A, AAA, CNAME, NS
- Zone file: contains DNS records
- Name server: resolves DNS queries
- Top level domain
- second level domain


# Amazon Route 53
A highly available scalable, fully managed authoritative DNS
- You can update the DNS records
- Route 43 is also a Domain Registar
- The only AWS service which provides 100% availability SLA
- 53 references the tradicional DNS port

# Records
- How to route traffic for your domain
- Each record contains:
    - Domain/subdomain name
    - Record type
    - Value
    - Routing policy
    - TTL

# Types
- A, maps a hostname to IPv4
- AAAA, maps a hostname to IPv6
- CNAME, maps hostname to another hostname
- NS, name server for the hosted zone

# Hosted zones
Container for records that define how to route traffic to a domain and its subdomain

    - Public Hosted zones
    - Private hosted zones

You pay 0.50 per month per hosted zone

# Records TTL
- High TTL e.g, 24hr
- Low TTL, more traffic
- 

# CNAME and Alias

- CNAME: points a hostname to any other hostname
this works only for NON root domain

- Alias: Points a hostname to an aws resource, works for root domain and non root domain

## Alias records
- Maps a hostname to an AWS resource
- An extension to DSN functinality
- Automaticlly recognizes changes in the resources IP addreeses
- Unlike CNAME it can be used for the top node of a DNS namespace
- Alias record is always of type A/AAAA for aws resources

The target:
- Elastic load balancers
- Cloudfront distribution
- API gateway
- Elastic beanstalk
- S3 websites
- VPC interface endpoints
- Global accelerator
- You cannot set an ALIAS record for an EC2 dns name