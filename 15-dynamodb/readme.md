# DynamoDB
NoSQL serverless database
- They scale horizontally
- They just require to model the data differntly and think about user queries differently
- Scales to massive workloads, distributed database
- Millions of requests per seconds, trillions of row, 100s of TB storage
- Enables event driven programming with DynamoDB streams
- Standard and Infrequent access Table class

# Basics
- Is made of tables
- Each table has a Primary Key
- Each table can have an infinite number of items
- Each item has attributes
- Maximum size of an item is 400KB
- Data types supported are:
    - ScalarTypes: String, Number, Binary, Boolean, Null
    - Document Types: List,Map
    - Set types: String set, Number Set, Binary Set

# Primary keys
- Partition key (HASH)
    - must be unique for each item
- Partition key + sort key (Hash + Range)
    - The combination must be unique for each item
    - Data is grouped by partition key

# Read / Write capacity
- Control how you manage your tables capacity
- Provisioned mode
    - You specify the number of reads/writes per second
    - You need to plan capacity beforehand
    - Pay for provisioned read and write
- On demand mode
    - Read / writes automatically scale up/down with your workloads

## Write Capacity Units (WCU)
- ONe write capacity Unit represents one write per second for an item up to 1KB in size
- If the items are larger than 1KB, more WCUs are consumed
-

# Strong consisten read vs Eventually consitent read
- Eventually consisten read (default)


## Read capacity units (RCU)
- One read capacity unit represents one strongly consisteng read per second, for an item up to 4KB in size
- Two eventually consisten reads per second for an item up to 4KB in size

## Throttling
- If we exceed provisioned RCU or WCU we get PRovisionedThroughPutExceededException
- HotKeys
- Hot partitions
- Very large items

Solutions:
- Exponential backoff
- Distribute partition keys
- If RCU issue, we can use DynamoDB accelerator (DAX)

# Basic operations
- PutItems
Creates a new item or fully replace an old item
- Consumes WCUs

- UpdateItem
Edits an existing items attribute or adds a new item if it does not exist
- Can be used to implement Atomic Counters a numeric attribute thats unconditonally incremented

- ConditionalWrites
Accept a write/Update/Delete only if conditions are met, otherwise returns an error
- Helps with concurrent access

- GetItem
- Query: Based on a KeyConditionExpression, FilterExpression
- DeleteTable
- DeleteTable
- BatchWriteItem

## PartiQL
- SQL compatible query language for DynamoDB
- Allows you to select, insert, update, delete data in DynamoDB using SQL
- USe it from:
    - AWS managment console
    - NoSQL workbench for dynamoDB
    - DynamoDB APIs
    - AWS CLI
    - AWS SDK


# Conditional Writes
- You can specify a Condition Expression to determine which items should be modified

# Local Secondary Index (LSI)
- Alternative Sort Key for your table
- The sort key consists of one scalar attribute
- Up to 5 LSI
- Must be defined at table creation time
- Attribute projections: can contain some or all the attributes of the ase table

# Global Secondary Index (GSI)
- Alternative Primary Key

# Optimistic Locking 
- DynamoDB has a feature called "Conditional writes"
- A strategy to ensure an item hasnt changed before you update/delted it 
- Each item has an attribute that acts as a version number

# DAX
- Fully managed, highly available seamless in memory cache for DynamoDB
- Microseconds latency for cached reads and queries
- SOlves the "Hot key problem"

# Streams
Ordered stream of item-level modifications in a table:
- Stream bcan be sent to:
    - Kinesis data streams
    - AWS lambda
    - Kinesis client library application
- Retention for up to 24 hours

## Lambda
- YOu need to define an Event Source Mapping ot read from DynamoDB
- You need to ensure the Lambda function has the appropiate permissions

# DynamoDB TTL
Automatically deleted items afer an expiry timestamp
Does not consume any WCU

# CLI
- --project-expression: one or more attributes to retrieve
- --filter-expression: filter items before returned to you
- --page-size: specify that AWS CLI retrives the full list of times but with a larger numver of API calls


# Transactions
Coordinated, all-or-nothing operations to multiple items across one or more talbes
- Provides atomiciyt, consistency, isolation, and durability
- Read modes: eventual consistency, strong consistency, transactional
- Write modes: Standard, transctional
- Consumes @x WCU, RCU
- Two operations:
    - TransactGetItems
    - TransactWriteItems


# Session state cache
- Common to use to store session state
- 

# Write sharding
- A strategy that allows better distribution of items, evenly across partitions

# + S3 patterns
- Large object pattern

# Security and other features
- VPC endopoints to access dynamoDB without using the internet
- Access fully controlled IAM
- Encryption at rest using AWS KMS, and in-transit using SSL/TLS
- Point-in-time recovery 
- Using web identity federation or cognit identity pools, eac user gets aws credentials