# IAM: Users and groups

IAM: Identity and access managment, global service
- Root account: created by default, shouldnt be used or shared
- users are people within your organization and can be grouped

# IAM : permissions
Users or groups can be assigned JSON documents called policies

# IAM Policies inheritance

Consists of:
- Version: policy language version, always include "2021-10-17"
- Id: an indentifier for the policy
- Statement: one or more individual statements

Statement:
- Sid: Identifier for the statement
- Effect: whether the statement allows or denies access (Allow or Deny)
- Principal: Account/user/role to which this policy applied to
- Action: list of actions this policy allows or denies
- Resource: list of resources to which the actions applied to

# AIM password policy 

In AWS you can setup a password policy:
- Set a minimum password length
- Require specific character types
- Including uppercase letters
- lowercase letters
- numbers
- non-alphanumeric chracters


MFA:
- Virtual MFA device
- U2F

# AWS Access keys, CLI and SDK

To access AWS you have three options:
- AWS managment console
- AWS command line interface
- AWS software developer kit (SDK)
- They are generated through the AWS console
- Cloudshell only works in some regions

# IAM Roles for AWS services
Some aws service will need to perform actions on your behalf, to do so, we will assign permissions
to AWS services with IAM roles

# IAM Security tools
- IAM credentials report (account-level)
A report that lists all your accounts users and the status of their various credentials

- IAM Access advisor (user-level)
Shows the services permissions granted to a user and when those services where last accessed
You can use this info to revise your policies

# IAM Best practices
- Dont user root account except for AWS account setup
- One physical user = ONE AWS user
- Assing user to groups and assign permissions to groups
- Create a string password policy
- Use and enforce the use of MFA
- Create and use roles for giving permissions to AWS services

# Shared responsibility model for AIM

AWS:
- Infra
- Configuration and vulnerability
- Compliance validation

User:
- USers,gruops, management and monitoriing
- Enable MFA
- Rotate all your keys often
- Use IAM tools to apply appropiate permissions
- Analyze access patterns and review permissions