# Cloudwatch
- Metrics
- Logs
- Events
- Alarms

## Metrics
- Is a variable to monitor
- Belong to namespaces
- Dimension is an attribute of a metric


## Custom metrics
Possibility to define and send your own custom metrics to CloudWatch
- Memory ram usage
- Number of logged in users


## CloudWatch logs
Log  groups: arbitrary name, usually representing an applicationL
Log stream: instances within application / log files / containers
- SDK, CloudWatch logs agent, CloudWatch unified agent
- With Logs subscriptions you get a real-time events from CloudWatch, send to kinesis data streams, Kinesis data firehose, or lambda
- Subscription filter, which logs are events delivered to your destination

## Agent
By default no logs from EC2 machine will to cloudwatch
- You need to run a CloudWatch agent on EC2 to push the log files you want
- CloudWatch logs agent: old version, can only send to CloudWatch logs
- CloudWatch unified agent: Collect additional system-level metrics such as RAM, processes, etc

## Metric filter
Logs can use filter expressions
- Find a specific IP inside a log
- Or count occurences of ERROR in your logs
- Metric filters can be used to trigger alarms

## Alarms
- Alarms are used to trigger notifications for any metric
- Various options
- Alarms  states

## Synthetics canary
- Configurable script that monitor your APIs, URLS, websites,...
- Reproduce what your customers do programamtically to find issues before customers are impacted
- Checks the availability and latency of your endpoints and can store load time data and screenshots of the UI

## Event bridge
- Formerly Cloudwatch events
- Schedule cron jobs (scheduled scripts)
- Event pattern: Event rules to react to a service doing something
- Multi-account aggre

# X-Rays
- Troubleshooting application performance and errors
- Distributed tracing of microservices
- Visual analysis of our application
- Leverages tracing: End to End way to following a request
- Each component dealing with a request adds its own trace
- Tracing is made of segments
- Annotations can be added to traces to provide extra-info

## How to enable
- Your code SDK
- s

# CloudTrail
- Internal monitoring of API calss being made
- Audit changes to AWS resources by your users

