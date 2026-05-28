locals {
  double_numbers = [for n in var.number_list : n * 2]
  even           = [for n in var.number_list : n if n % 2 == 0]
  names          = [for p in var.object_list : p.name]
}

output "result" {
  value = local.names
}