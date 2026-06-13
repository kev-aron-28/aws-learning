# API gateway

- AWS lambda + API gateway: no infra to manage
- Support for the websocket protocol
- handle multiple environment
- handle security
- create apikeys,
- swagger/open api
- transform and validate requests and responses
- generate sdk and api specifications
- cache api responses


# Integrations
- Lambda functions
- HTTP
- AWS service

# Endpoint types
- Edge optimized: for global clients
    - Requests are routed through the cloudfront edge locations
- Regional: for clients within the same region
- private: can only be accessed within your vpc

# Security
- User authentication through
    - IAM roles
    - Cognito
    - Custom authorizer
- Custom domain danem https security through integration with AWS
    - Certificate manager
- Must setup a CNMAe or alias

# API gateway - deployment stages
- Making changes in the API gateway does not mean they're effective
- You need to make a deployment fro them to be in effect
- Changes are deployed to Stages
- Use the naming you like for stages

## stages variables
- Are like environment variables for API gateway
- Use them to change often changing configuration rules
- Stage variables are passed to the context object in AWS lambda
- We create a stage variable to indicate the corresponding Lambda alias

# Canary deployment
- Possibility to enable canary deployments for any stage (usually prod)
- Choose the % of traffic the canary channel receives
- Metrics and logs are separate
- This is blue / green deployment with AWS lambda and API gateway

# Integration types
- Integration type mock
- Integration type HTTP / AWS
- AWS_PROXY
- HTTP_PROXY