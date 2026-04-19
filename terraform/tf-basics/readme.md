What terraform is?
Is not a scripting tool but a declarative state engine

Declarative 

``` 
resource "aws_instance" "web" {
  ami           = "ami-123"
  instance_type = "t2.micro"
}
```

Minimal working configuration


``` terraform
terraform {
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
```

## The terraform workflow
Core commands:


1. Initialize

```
terraform init
```

What happens:
- Download AWS provider
- Creates .terraform/ directory

2. Plan

``` 
terraform plan
```

3. Apply

```
terraform apply
```


# First resource

```
resource "aws_s3_bucket" "example" {
  bucket = "my-unique-terraform-bucket-12345"
}
```