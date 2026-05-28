locals {
  first_name = var.object_list[*].name
}

output "splat_test" {
  value = local.first_name
}