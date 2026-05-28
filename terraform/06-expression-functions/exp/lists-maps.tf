locals {
  users_map = {for user in var.users : user.username => user.role}
}

output "user_map" {
  value = local.users_map
}