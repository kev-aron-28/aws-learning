# Creating multiple resources
- Avoid code duplication by leveraging count and for_each meta-arguments

- Count: used to define the number of instances of a specific resource Terraform should create
    - It can be used with modules and with resources
    - Must be known before terraform performs any remote resource actions
    - <TYPE>.<LABEL>[<INDEX>] refers to a specific instance of a resource, while <TYPE>.<LABEL> referers to the resource as a whole

- for_each, accepts a map or a set of strings and creates an instance for each entry in the received expression
