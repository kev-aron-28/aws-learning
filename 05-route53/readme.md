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

# Routing policies
Define how route 53 responds to DNS queries
- Its not the same as Load Balancer routing which routes the traffic
- It only responds to to the DNS queries

## Simple
- Typically route traffic to a single resource
- Can specify multiple values in the same record
- If multiple values are returned a random on is chosen
- When alias enabled, specify only one AWS resource
- Cant be associated with Health checks

## Weigthed
- Control the % of the requests that go to each specific resource
- DNS must have the same name and type
- Load balancing between regions, testing new application versions
- Can use Health checks

## Latency based
- Redirect to the resource that has the least latency close to use
- Latency is based on traffic between users and AWS regions
- Can be associated with health checks

## Failover based
Primary and secondary

## Geolocation
Different from latency based
This routing is baed on user location,
- Specify location by continent,country, or by us state
- should create a default record
- website locatization, retrict content distribution, loadbalancing
- Can be associated with health checks

## Geoproximity
Route traffic to your resources based on the geographic location of users and resorces
Ability to shift more traffic to resources based on the defined bias
To change the size of the geographic region, specify bias values

## IP based
Routign based on clients IP addresses, provide a list of CIDRs for your clients and the corresponding endpoints/locations
Optimize performance, reduce network costs

## Multi-value
Use when routing traffic to multiple resources
Can be associated with Health checks
up to 8 health records are returned 

# Health checks
HTTP health checks are only for public resources


For private hosted zones:
- Route 53 health checkets are outside the VPC
- They cant access private endpoints
- You can create a CloudWatch metric and associate a CloudWatch alarm, then create a Health check that checks the alarm itself

1. Monitor and enpoint
2. monitor another health checks

# Domain registar vs DNS service
You buy your domain name with a domain registar typically by paying annual charges
The domain registar provides you with a DNS service to manage your DNS records, but you can use another DNS service to manage your DNS records