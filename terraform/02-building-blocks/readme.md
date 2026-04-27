# HCL (HashiCorp configuration language)

## Terraform block
Used for configuring the terraform project

- Only constants are allowed within the terraform block
- backend used to configure a state backend for the project
- required_version: used to specify the accepted versions of terraform
- required_providers: specifies the requried providers for the current project
    - =, !=, >=, <=, >, <
    - ~> allows only the rightmost digit to increment


```
terraform {
    required_version = "1.7.0"
    backend "s3" {
        //...
    }

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.33.0"
        }
    }
}

```

# Commands

- Terraform init, to start the project 
- terraform fmt, to f
- terraform validate, to check if the config is invalid
- terraform plan
- terraform apply
- terraform show
- terraform state list
- terraform apply -destroy

# Terraform state
Maps resources from teh configuraiton to real-world objects
- Sensitive data