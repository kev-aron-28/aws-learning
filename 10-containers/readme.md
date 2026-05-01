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

## Rolling updates
We can control how many tasks can be started and stopped and in which order

# Task definitions
Task definitions are metadata in JSON form to tell ECs how to run a docker container

## Load balancing in EC2 lauch type
We get a Dynamic Host port mapping if you define only the container pot in the task definition

## Load balancing in Fargate
Each task has a unique private IP
- Only define the container port

## Environment variables
- Harcoded
- SSM parameter store
- Secrets manager

## Data volumes 
Share data between multiple containers in the same Task definition
- Works for both EC2 and fargate

# Task placement process

1. Identify the instances that satisfy the CPU memor and port requirements in the task definition
2. Identify the instances that satisfy the task placement constraints

## Strategies
- Binpack: Place task based on the least available amount of CPU or memory This minimizes the number of instances in use\
- Random
- Spread

# Amazon ECR
Elastic Container Registry

# Copilot
CLI to build, release and operate production ready containerized apps

# Amazon EKS
Amazon Elastic Kubernetes Service, Its a way to launch managed Kubernetes clusters on AWS
Kuberentes is an open-source system for automatic deployemtn
Its an alternative to ECS, similar goal but different APi

## NOde types
- Managed Node Groups
- Self-managed nodes
- AWS fargate


## Data volumes 
NEed to specify StorageClass manifest on your EKS cluster
Leverages a Container Storage Interface compliant driver