variable "ec2_instance_type" {
  type    = string

  validation {
    condition     = var.ec2_instance_size == "t2.micro" || var.ec2_instance_size == "t3.micro"
    error_message = "only t2.micro and t3.micro"
  }
}

variable "ec2_volume_size" {
  type = number
}

variable "ec2_volume_type" {
  type = string
}

variable "ec2_volume_config" {
  type = object({
    size = number
    type = string
  })

  default = {
    size = 10
    type = "gp3"
  }
}

variable "additional_tags" {
  type = map(string)
  default = {}
}