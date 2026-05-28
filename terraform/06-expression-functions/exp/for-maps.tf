locals {
  doubles_map = {
    for key, value in var.numbers_map : key => value * 2
  }
}

output "object" {
  value = local.doubles_map
}