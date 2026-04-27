# S3
- Backup storage
- Disaster recovery
- Archive
- Hybrid cloud storage
- Application hosting
- MEdia hosting

# Buckets
- Amazon S3 allows people to store objets in buckets (directories)
- Buckets are defined at the region level
- S3 looks like global service but buckets are created in a region

Naming:
    - Shared global namespcae
    - Account regional namespace

- Naming constraints:
- No uppercase, no underscore
- Not an ip
- Must start with lowercase
- Must not start with the prefix xn
- Must not end with the suffix -s3alias

## Objects
- Max object size 50TB
- If uploading more than 5G, must use "multi-part upload"


## S3 security

- User based
    - IAM policies

- Resource based
    - Bucket policies
    - Object Access control list
    - Bucket Access control list


### Bucket policies
JSON based policies
    - Resources buckets and objects
    -Grant public access to the bucket
    - Force objets to be encrypted at upload
    - Grant access to another account

# S3 versioning
it is enabled at bucket level

# S3 replication
- We must enable versioning in source and destination buckets
- Cross-Region
- Same region
- You can replicate existing objects using S3 batch replication

# S3 storage classes
- S3 standard, general purpose
- S3 standard-infrequent access
- S3 One zone-infrequent access
- S3 glacier Instant retrieveal
    - Flexible retrieval
- Glacier deep archive
- Intelligent tiering

----

# Advanced

Lifecycle rules
- Transition actions: configure objects to transition to another storage class
- Expiration actions

## S3 performance
Automatically scales to high request rates, latency 
There are no limits to number of prefixes in a bucket, you can achieve at least 3500 put/copy/post/delete or 5,500 get/head

1. Multi-part upload
2. S3 transfer acceleration
3. Byte range fetches
    - Parallelize GET 


## User defined metadata
    - Whan uploading an object, you can also assign metadata
    - name-value (key-value) pairs
    - User defined metadata names must begin with "x-amz-meta"
    - it is stored in lowercase
## S3 object tags
    - Key value for objects in AMAZON s3
    - Useful for fine-grained permissions
    - Analytics purposes

You cannot search object metadata or object tags, instead you must use an external DB as a search index

# S3 encryption
1. Server side encryption
Encryption using keys handled managed by AWS, object is encrypted server-side, AES-256 must set header "x-amz-server-side-encryption:"
if using KMS, you have user control + audit key usage using CloudTrail
2. Client side encryption


# Encryption in flight
SSL/TLS
Amazon exposes two endpoints: HTTP and HTTPS

# S3 CORS
Cross origin resource sharing
You can allow for specific origin or for * (all origins)

# MFA delete
Forces users to generate a code on a device before doing important operations on S3
Versioning must be enabled

# S3 acces logs 
- For audit purpose
- Any request made to S3 from any account authorized or denied, will be logged into another S3 bucket

# Pre signed urls
Generate pre signed URls using the S3 console, aws CLi or SDK
- 1 minute up to 720min(12 hours)
- AWS CLI, configure explication with  expires in parameter in seconds

# Access points
Access points simplify security managment for S3 buckets
- its own DNS name 
- 

# S3 object lambda
- Use aws lambda function to change the object before its retrieve by the caller
- Only one S3 bucket is needed