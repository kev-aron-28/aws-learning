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