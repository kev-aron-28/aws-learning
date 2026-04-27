# AWS cloudfront
Content delivery network
- Improves read perfomance
- Content is cached at the edge
- Improves uses experience


## Origins

- S3 bucket
    - FOr distributing files and caching them at the edge
    - For updloading files to S3 through CloudFront
    - Secured using Origin Access Control
- VPC origin
    - For applications hosted in VPC private subnets
    - Private Application Load Balancer
- Custom Origin
    - S3 website
    - Any public HTTp backend you want

# Difference CloudFront vs Corss Region Replication
- CloudFrount:
    - GLobal Edge network
    - Files are cached for a TTL
    - Great for static content that must be available

- S3 cross region replication
    - Must be setup for each region
    - Files are updated in near real-time
    - Read only
    - Great for dynamic content that needs to be available at low-latency in few regions

# CloudFront caching 
The cache lives at each CloudFront edge location, identifies each object in the cache using the cache key

Cache based on:
- HTTP headers
- Cookies
- Query strins

Control the TTL

# Cache invalidations
You can force an entire or partial cache refresh

# Cache behaviors
- Configure different settins for a given URL path pattern
- Route to dfferent kind of origins/origin groups based on the contetn type or path pattern

# CloudFront 
ALB or Ec2 as an origin using VPC origins
- Allows to deliver content from your applications hosted in your VPC private subnets

Deliver traffic to private:
- Application load balancer
- Network load balancer
- EC2 instances