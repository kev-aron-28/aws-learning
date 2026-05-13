A declarative way of outlining your AWS infrastructure for any resources

# How it works
Templates must be uploaded in S3 and the referenced in cloudformation

# Deploying cloudformation templates

1. Manual way
    - Edit using Infra composer
    - 
2. Yaml

# Building blocks
- awstemplateformatversion
- description
- resources
- parameters
- mappings
- outputs
- conditionals

# Resources
Are the core of your cloudformation templates (mandatory)
- There are over 700 types of resources
- service-provider::service-name::data-type-name

is every AWS service supported?
You can work around that using Cloudformation Custom Resources

# Parameters
Parameters are a way to provide inputs to you AWS CloudFormation template
- Reuse templates across the company
- Some inputs cannot be determined ahead of time


# Mappings
Mappings are fixed variables within your CloudFormation template, they are very handy to differentiate between different environments


# Outputs
This section declares optional output values that we can import into another stacks, they are useful for example if you define a network CloudFormation
its the best way to perform some collaboration cross stack

# Conditions
COnditions are used to control the creation of resources or outputs based on a condition

# Intrinsinc functions
- REF
= Fn:GetAtt
- Fn::FindInMap
- Fn::ImportValue
- Fn::Join
- Fn::Sub
- Fn::ForEach
- Fn::ToJsonString
- Condition functions