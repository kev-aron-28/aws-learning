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
