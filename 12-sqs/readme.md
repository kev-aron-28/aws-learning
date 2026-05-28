# Amazon SQS

- Oldest offering 10 years
- Fully managed service, used to decouple applications
- Unlimited throughput
- unlimited number of messages in queue
- default retention of 4 days maximum 14 days

## SQS with auto scaling group
You have a metric on Queue Length: ApproximateNumberOfMessages

## Encryption
- In flight encryption using HTTPS API
- At rest encryption using KMS keys
- Client side encryption if the client wants to perform itseg

# SQS queue access policy
- Cross account access 

# Message visibility timeout
After a message is polled by a consumer, it becomes invisible to other consumer

# Dead letter queue
If a consumer fails to process a message within the Visibility Timeout, the message goes back to the queue

We can set a threshold of how many times a message can go back to the queue

## SQS DLQ - redrive to source
Feature to help consume messages in the DQL to understand what is wrong with them, when our code is fixed we can 
redrive the message the messages from the DLQ back into the source 

## Amazon SQS  delay queue
- Delay message up to 15 minutes
- Default is 0 seconds
- Can set a default at queue level

# Long Polling
When a consumer requests messages from the queue it can optionally wait for messages to arrive if there 
are none, this is called long polling, we do it to increase the efficiency and decreasing the latency 

# Extended client
Message size limit is 1024 KB, with this you can send larger mesages

# Api calls
- CreateQueue
- PurgeQueue
- SendMessage
- ReceiveMessage
- Delete message
 

# FIFO queue
First In First Out ordering of messages in the queue
Limited throughput: 300 msg/s without batching and 3000 msg with
Exactly-once send capability
- Ordering by message group id

## Deduplication
- Deduplication interval is 5 minutes
- Content based
- Explicitly provide a message deduplication id

## Grouping
If you specify the same value of MessageGroupId in a SQS FIFO queue, you can only have one consumer
- To get ordering at the level of a subset of messages, specify different values for MessageGroupID
- Message that share a common Message Group ID will be in order within the group
- Each group id can have different consumer


# Amazon SNS
What if you cant to send one message to many receivers?
- The event producer only sends message to one SNS topic
- as many event receivers as we want to listen to the SNS topic notifications
- Each subscriber to the topic will get all the messages

## Fanaout pattern
- Push once in SNS, receive all SQS queues that are subscribers
- Fully decoupled, no data loss
- SQS Allows for: data persistence, delayed processing and retries of work

# Amazon Kinesis Data Streams
Collect and store streaming data in real-time

- Provisioned mode:
    - Chose numbers of shards
    - Each shard gets 1 MB/s
- On demadn mode:
    - Scale automatically based on observed througput

# Amazon Data firehouse
Used to be called "Kinesis data firehose"
- FUlly managed service
- Automatic scaling serverles pay for what you use
- Near real time


# SQS vs SNS vs Kinesis
SQS:
- Consumer pull data
- Data is deleted after being consumed
- Can have as many consumers as we want
- No need to provision 
- 10 max simust

SNS:
- Push data to many subscribers, all receive a copy
- Data is not persisted
- Pub/Sub

Kinesis:
- Standard: pull data from shard
- Enhaced fan out: push data
- Possiblity to replay data
- Meant for real-time big data analytics and ETL
- Ordering at shard level
- Max 10 EC2
- max of 365 days