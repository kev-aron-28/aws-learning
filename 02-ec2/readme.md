# EC2 

- EC2 is one of the most popular services
- Elastic compute cloud 
- It mainly consists in the capability of:
    - Renting virutal machines
    - Storing data on virtual drives
    - Distributing load across machines (ELB)
    - Scaling the services using an auto-scaling group


# Sizing and configuration options
- OS: Linux, Windows, Mac
- CPU
- RAM
- EBS and EFS
- Network
- Firewall
- Boostrap script

# EC2 instance types basics
- General purpose
- Compute optimized
- Memory optimized
- Accelerated computing
- Storage optimized
- HPC optimized
- Instance features
- Measuting instance performance

## Naming convention
Example:
m5.2xlarge
. m: Instance class
. 5: generation
. 2xlarge: size within the instance class

## General purpose
Great for diversity of workloads such as web servers or code repositories
Balance between:
- COmpute
- Memory
- Networkin


## compute optimized
Greate for compute-intensive tasks that require high performance processors
- Batch processing
- MEdia transcoding
- High performance web servers

## Memory optimized
Fast performance for workloads process large data sets in memory
Use cases:
- High performance, relational databases
- Distributed web scale cache stores
- In memory databases
- Applications performing real-time processing of big unstructured data

## Storage optimized
Great for storage-intensive tasks that require high, sequential read and write access to large data

# Security gropus
Are fundamental of network security in AWS and they control how traffic is allowed into or out of or EC2 instances
They only contain allow rules

They act as a firewall on EC2 instances

They regulate:
- Access to ports
- Authorized IP ranges
- Control of inboud network
- Contro of outbound network

They can be attached to multiple instances

Ports:
- 22 = ssh
- 21 = ftp
- 22 = SFTP
- 80 = HTTP
- 443 = HTTP3
- 3389 = RDP

# Instance purchase options

- On-demand instances : short workloa, predictable pricing, pay by second
- Reserved (1, 3 years)
    - Reserved instances
    - Convertible Reserved instances
- Saving plans
- Spot instances
- Dedicated instances


## Ec2 on demand
Pay what you use
- Highest cost but no upfront payment
- No long term commitment
- Recommended for short-term and un-interrupted workloads

## Reserved instances
- Up to 72 discount compared to On-demand
- You reserve a specific instance attribute (Type, Region, Tenancy, OS)
- Reservation period 
- Payment options: NO upfront, Partial upfront, all upfront
- Reserved instnace's scope: regional or zonal
- Recommended for steady-state usage applications


## Saving plans
- Get a discount based on long term usage (up to 72% same as IRs)
- Commit to a certain type of usage (10/hour for 1 or 3 years)
- Usage beyond EC2 saving plans is billed at the on-demand price
- Locked to a specific instance family and aws region

## Spot instances
- Can get a discount of up to 90% compared to On-demand
- Instances that you can lose at any point of time if yoour max price is less than current spot price
- The most cost-efficient instances in AWS
- Not suitable for critical jobs

## Dedicated hosts
- A physical serverwith EC2 instnace capacity fully dedicatd to your user
- Allows you address compliance requirements and use your existing servers bound software licences (per-socket, per-core, pe-vm)
- Useful for software that have complicated licensing model (BYOL)

## Dedicated instances
- Instances run on hardware thats dedicated to you
- May share hardware with other instances in same account

# EBS
Elastic Block Store Volume is a network drive you can attach to your instances while they run
Allows to persist data, even after their termination

- They can only be mounted to one instance at a time
- They are bound to specific availability zone
- It uses the network to communicate the instance, which means there might be instance
- Network drive
- It can be detached from an EC2 an attached to another quickly


## Snapshots
- Make a backup (snapshot) of your EBS volume at a point in time
- Not necessary to detach volume to do snapshot
- Can copy snapshots across AZ or Region

# AMI 
AMI = Amazon machine image
Are customization of an EC2 instance
- You add your own software, configuration, operating system monitoring
- Faster boot/configuration time because all your software is pre-packaged
- AMI are built for an specific region

# EC2 instance store
EBs volumes are network drives with good but limited performance
- if you need a high performance hardware disk, use EC2 instance store
- Better I/O performance
- Ec2 isntance store lose their storage if they're stopped

# Ebs volume types
EBS volumes come in 6 types:
- gp2/gp3 (SSD: General purpose SSD volume
- ioI / io2 BLock express (SSD: Highest performance SSD volume for mission critical low-latency or high throughput
- stl(HDD): low cost HDD volume designed for frequently accessed, throughput intensive workloads
- scl(HDD): lowest cost HDD volume designed for less frequently access workloads

## EBS multi-attach - iol/io2 family
- Attach the same EBS volume to multiple EC2 instances in the same AZ
- Each instance has full read & write permissions to the high performance volume
- Up to 16 Ec2 instance at a time


# Amazon EFS
- Manage NFS (network file system) that can be mounted on many EC2
- EFs works with EC2 instances in multi-AZ
- Highly available, scalable, expensive (3x gp2) pay per use
- uses NFSv4.1 protocl
- Uses security group to control access to EFS
- Compatible with linux based AMI

# EBS vs EFS 

EBS are attached to once instance at a time, except multi-attach io l/io2, they are locked at Az level
TO migrate EBs volume across AZ you take a snapshot, restore the snapshot to another AZ

EFS can be mounted up to 100s of instances across AZ, only for Linux instances, and has a higher price than EBS