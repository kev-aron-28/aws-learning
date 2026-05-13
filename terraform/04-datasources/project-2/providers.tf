terraform {
  required_version = ">= 1.7"

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


data "aws_caller_identity" "identity" {

}

data "aws_region" "current" {

}

output "aws_caller_identity" {
  value = data.aws_caller_identity.identity
}

# VPC INFO

data "aws_vpc" "vpc_prod" {
  tags = {
    Env = "Prod"
  }
}

output "vpc_data" {
  value = data.aws_vpc.vpc_prod.id
}

# Fetching 

data "aws_availability_zones" "az" {
  state = "available"
}

output "azs" {
  value = data.aws_availability_zones.az.names
}


# IAM Policies
data "aws_iam_policy_document" "static_website" {
  statement {
    sid = "PublicReadGetObject"
    principals {
      type = "*"
      identifiers = ["*"]
    }
    actions = [ "s3:GetObject" ]
  }
}