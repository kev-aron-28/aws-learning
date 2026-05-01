# Resources
Are used to configure real-world infra objects

They are used to manage any infra that we want to mange with terraform

The combination of resource type and resource name must be unique within a module

# Resouce dependencies

Terraform supports both parallel and sequential creation of resources. We can define explicit dependencies via the depends_on mata-argument

# Meta arguments
Meta arguments allows us to configure Terraform s behaviour in many ways

- depends
- count and for each
- provider

Lifecycle:
- create_before_destroy
- prevent_destroy
- replace_triggered_by
- ignore_changes