# Input, Locals and outputs

## Input variables
Customize values based on variables to create reusable and composable code

Its a convention to declare them inside of variables.tf file and we use them via var.<NAME>

To provide values:
- Default values for variables
- Environment variables
- terraform.tfvars
- terraform.tfvars.json
- command line -var and --var file