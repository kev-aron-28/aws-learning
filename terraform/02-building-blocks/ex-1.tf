terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.37.0
        }
    }
}

# Actively by use
resource "aws_s3_bucket" "my_bucket" {
    bucket = var.my_variable
}

# managed somewhere else
data "aws_s3_bucket" "my_external_bucket" {

}

variable "my_variable" {
    type = string
    description = "My variable used to set bucket name"
    default = "my_default_bucket_name"
}

output "bucket_id" {
    value = var.my_variable
}

output "test" {
    value = "locals.local_example
}

locals {
    local_example = "This is a local variable"
}

module "" {
    source = "./module-example"
}