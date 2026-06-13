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

# Event and context objects
- Event object:
    - JSON-formatted document contains data for the function to process
    - Contains information from the invoking sevice
- Context object
    - Provides methods and properties that provide information about the invocation, function and runtime environment]

# Lambda destinations
Can configure to send result to a destination

- Async invocations: can define destinations for succesful and failed event

# Lambda execution role
- Grants the lambda function permissions to aws services / resoursces
- When you use an event source mapping to invoke your function, Lambda uses the execution role to read event data
- Use resource-based policies to give other accounts and AWS services permission to use your lambda resources

# Environment variables
- Key value pair in String form
- Adjust the function behaviour without updating code

# Lambda loggin and monitoring
- Aws lambda execution logs are stored in AWS CloudWatch logs
- Must have the execution role with an IAM policy that authorizes writes to CloudWatch logs

# Lambda @Edge and CloudFront functions

- Edge function:
    - A code that you write and attach to CloudFront distributions
    - Runs close to your users to minimize latency
- CloudFront provides two typew: CloudFront functions & Lambda@Edge
Use cases:
- Website security and privacy
- Dynamic web application at the edge
- Search engine optimization

## CloudFront functions
- Lightweight functions written in JS
- For high-scale, latency-sensitive CDN customizations
- Sub ms startup times, millions or requests/second
- Used to change viewer requests and responses

## Lambda@Edge
- Lambda functions writting in NODEJS or Python
- Scales to thousands of requests/second
- Used to change CloudFront requests and responses origin also

## Uses
- CloudFront functions
    - Cache key normalization

# Lambda and VPC
- By default your lambda function is launched outside your own VPC
- Therefore it cannot access resources in your vpc

## Internet access
- A lambda function in your VPC does not have internet access
- You must deploy in a private subnet and give internet access with a NAT gateway


# Perfomance
- RAM: 128GM to 10GB in 1MB increments
- The more Ram you add the more Vcpu credits you get
- Timeout: 3 seconds, maximum: 900seconds (15 min)
- Initialize outside the handler
- You can use the /tmp directory

# Lambda layers
- Custom runtimes
- Externalize dependencies to re-use them

# File system mounting
- Lambda can access EFS file systems if they are running in a VPC
- Configure Lambda to mount EFS file systems to local directory during initialization

# Concurrency throttling
- Concurrency limit: up to 1000 concurrent executions
- If the function does not have enough concurrency available to process all events, additional requests are throttled
- Cold start: Code is loaded and code outside the handler run (init). You use provisioned concurrency

# External dependencies
You need to install the packages alongside your code and zip it together
- UPload the zip or S3 first

# CloudFormation
- Inline functions are simple
- From S3

# Lambda container images
- Deploy lambda functions asa container images of up to 10GB from ECR

# Lambda versions and aliases
WHen you work on a Lambda function we work on $LATEST
- We can create a version
- Versions are immutable
- Versions have incresing version numbers

# CodeDeploy 
- Can help you automate traffict shift for lambda aliases
- Feature is integrated within the SAM framework

# Lambda function URL
Dedicated HTTPS endpoint for your lambda function
- A unique URL endpoint is generated for you
- Invoke via a web browser

# Lambda CodeGuru profiling
- Gain insights into runtime performance of your Lambda functions using CodeGuru Profiler
- CodeGuru creates a Profiler Group for you Lambda function
- Supported for Java and Python runtimes
- Activate from AWS Lambda console

# Lambda limits
- Memory: 128MB - 10GB
- Maximum execution time: 900 seconds (15 minutes)
- Environment variables: 4kb
- disk capacity in the function container /tmp: 512MB to 10 GB
- concurrency: 1000
- Lambda function deployment size: 50MB
- Size of uncompressed deployment: 250MB

# Best practice
- Perform heavy-duty work outside of your function handler
- Use environment variables
- Minimize your deployemnt packacge size
- Avoid using recursive code