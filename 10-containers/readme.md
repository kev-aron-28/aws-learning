- Amazon elastic container service
- amazon elastic kubernetes service
- aws fargate
- aws ecr


# Amazon ECS

## EC2 lauch type
Elastic container service
- Lauch DOcker containers on AWS =  Lauch ECS tasks tasks on ECS clusters
- EC2 lauch type: you must provision and maintain the infra
where each EC2 must run the ECS agent to register in the ECS cluster
- aws takes care of starting / stopping containers

## Farget lauch type
- Lauch docker containers on aws
- You do not provision the infra (No EC2 instances to manage)
- its all serverless
- AWS just runs ECS tasks for you 
- To scale just increase the number of tasks

# IAM roles for ECS

1. EC2 instance profile (for EC2 lauch type):
- Used by the ECS agent
- Makes api calls to ecs service
- send container logs to cloudwatch
- pull container image from ECR
- reference sensitive data in Secrets Manager or SSM parameter store

2. ECS task role:
-  Allows each task to have a specific role
- use diffrent roles for different ECS services you run
- defined in the task definition

# ECS service auto scaling
Automatically increase/decrease the desired number of ECS tasks

It uses ECS, AWS application Auto Scaling


## Launch type
- Auto scaling group
- Cluster capacity provider