# VCP and subnets

VPC: Private network to deploy your resources (regional resources)

Subnets: Allow you to partition your network inside your VPC (AZ resource)

Public subnet: is a subnet that is accessible from the internet
Private subnet: is a subnet that is not accessible from the internet

To define access to the inernet and between subnets we use RouteTables

# Internet gateway and NAT gateway
- Internet gateways helps our VPC instances connect with the internet
- Public subnets have a route to the internet gateway

- NAT gateways (AWS managed) and NAT instances (self-managed) allow your instances in your private Subnets to access the internet while remaining private

# Network ACL and security groups

NACL (Network ACL)
    - A firewall which controls traffic from and to subnet
    - Can have allow and deny rules
    - Are attached at the subnet level
    - Rules only include IP addresses

Security groups
    - A firewall that controlls traffic to and from an ENI / an EC2 instance
    - Canhave only ALLOW rules
    - Rules include IP addresses and other security groups

# VPC flow logs
Capture information about the IP traffic going into your interfaces:
    - VPC flow logs
    - Subnet flw logs
    - Elastic network interface flow logs
    - Can go to S3, CloudWatch, Kinesis data firehose


# VPC peering
Connect two VPC privately using AWS network
- Make them behave as if they were in the same network
- Must not have overlapping CIDR
- VPC peering connection is not transitive


# VPC endpoints
Allows you tu connect to aws services using a private network instead of the public network
- This gives you enhanced security and lower latency to access AWS services

- VPC endpoint gateway: S3 and DynamoDB
- VPC endpoint interface: most services
- Only used within your VPC

# Site to site and direct connect
- Site to Site VPN
    - Connect an onpremises VPN to aws
    - the connection is encrypted
    - Goes over the public internet

- Direct Connect (DX)
    - Establish a physical connection between on premises and AWS
    - The connection is private, secure and fast
    - Goes over a private network

