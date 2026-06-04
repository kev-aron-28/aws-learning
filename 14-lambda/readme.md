# Serverless
- Is a new paradigm where you dont provision servers directly but they are rather managed by the cloud

Examples:
- AWS lambda
- DynamoDB
- AWS cognito
- AWS API Gateway
- Amazon S3
- AWS SNS and SQS

# Lambda
- Virtual servers
- Limited by time
- Run on-demand
- Scaling is automated
- pay per request and compute time


## Integrations
- API gateway
- Kinesis
- DynamoDB
- CloudFront
- CloudWatch events
- Cloudwatch logs
- SNS
- SQS
- Cognito

## Sync invocations
- Synchrounous: CLI, SDK, API gateway, Application Load balancer
- results returned right away
- Erro handling must be made by the client

- User invoked:
    - Elastic Load balancing
    - Amazon API gateway
    - Cloudfront
    - S3 batch
- Service invoked:
    - Cognito
    - Step functions
- Other:
    - Lex
    - Alexa
    - Kinesis

## Integration with ALB
To expose a function as an HTTP endpoint
- You can use the Application Load Balancer or an API gateway
- The lambda function must be registered in a target group

## Async invocations
The vents are placed in an Event queue
- S3
- SNS
- Cloudwatch events
- CodeCommit
- CodePipeline

## Integration with Cloudwatch events / event bridge
- Cron or Rate
- EventBridge rule trigger every 1 hour


## Integration with S3 events notifications
- S3:ObjectCreated, S3:ObjectRemoved, S3:ObjectRestore, S3:Replication
- Name filtering possible


## Lambda - Event source mapping
- Kinesis data streams
- SQS, SQS FIFO queue

Common denominator: Records need to be polled from the source

## Streams and lambda
- An event source mapping creates an interator for each shard, process items in order
- Start with new items, from the beginning or from timestamp
- Processed items are removed from the stream

## Kinesis data streams and Dynamo DB streams
- One lambda invocation per stream shard
- If you use parallelization, up to 10 batches processed per shard

## SQS standard
- Lambda adds 60 more instances per minute to scale up
- Up to 1000 batches of messages processed simultaneously