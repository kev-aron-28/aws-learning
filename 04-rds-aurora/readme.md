# Amazon RDS
- RDS Relational database service
- Managed DB service for DB use SQL

Advantages:
- Is a managed service:
- Automated provisioning
- Continuous backups
- Monitoring dashboards
- Multi AZ for DR
- Scaling capability
- Backed by EBS
- Cant ssh

# Storage auto scaling
- Helps you increase storage on yor RDS dynamically
- It scales automatically

# Read replicas
- Up to 15 read replicas
- Within AZ, cross AZ or Cross region
- Replication is ASYNC so reads are eventually consistent
- Replicas can be promoted to their own DB

- Only for read

# RDS multi AZ
- SYNC replication
- One DNS name
- For disaster recovery
- Increase availability

# From Single AZ to multi AZ
- Zero downtime operation
- Just click on modify for the database

# Amazon Aurora
- Properiarity tech of aws
- Postgres and MySQL are both supported as AuroraDB 
- AWS cloud optimized
- 5x performance improvement

- 6 copies of your data across 3 AZ
    - 4 copies out of 6 needed for writes
    - 3 copies out of needed for reads
    - 

- Automatic fail-over
- Backup and recovery
- isolation and security
- industry compliance
- push-button scaling
- advanced monitoring
- routing maintenance


# RDS and aurora security
- At rest encryption
    - Database master and replicas encryption using AWS KMS 
    - If the master is not encrypted, the read replicas cannot be encrypted
    - To encrypt an un-encrypted database, go through a DB snapshot and restore as encrypted
- In-fligth encryption
- IAM authentication
- Security groups
- No ssh available

# RDS proxy
- Fully managed database proxy for RDS
- Allows apps to pool and share DB connections established with the database
- Improving database efficiency reducing the stress on database resources
- Serverles
- RDS proxy is never public, 

# Amazon Elasitc Cache
- Managed Redis or Memcached
- In memory databases with really high performance, low latency
- Helps reduce load off of database for read intensive workloads
- Aws takes care of OS maintenance / patching optimization, setup, configuration, monitoring failure recovery and backups 
- Up to 5 Re

ad Replicas

# Elastic Cache stretegies

- Cache-aside
- Write-through

# Amazon MemoryDB for redis
- Redis compatible, durable, in memory database service
- Ultra fast performance with over 160 millions requests/second
- Multi-AZ
