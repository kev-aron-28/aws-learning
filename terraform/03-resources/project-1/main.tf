terraform {
  required_version = "~> 1.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# 1. Deploy a vpc
# 2. deploy a internet gateway and associate it with the vpc
# 3. setup a route  table with a route to the IGW
# 4. Deploy an EC2 instance inside of the created subnet
# 5. Create a public IP and a security group that allows public ingress

