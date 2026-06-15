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

# Mapping templates
- Can be used to modify request/ responses
- Rename / modify query string parameters
- Modify body content
- Add headers
- Uses velocity template language VTL
- Filter output results

## JSON to XML with SOAP
- SOAP APi are XML based

# Open API SPEC
- Common way of defining REST APIs, using API definition as code
- You can configure API gateway to perform basic validation of an API request before preceeding with the integration request

# Caching responses
- Caching reduces the number of calls madae to backend
- 

# Usage plans and API keys
- If you want to make an API available as an offering to your customers
- Usage plan:
    - Who can access one or more deployed API stages and methods
    - how much and how fast they can access them
    - uses API keys to identify API clients and meter accers
    - configure throttling limits and quota limits that are enforced on individual client
- API keys


# Logging and tracing
- CloudWatch logs:
    - Log contains information about request /response body
    - Enable CloudWatch at stage level
    - CacheHitCount, CacheMissCount

# CORS
- CORS must be enable when you receive API calls from another domain
- 


# Authorization and authentication
- IAM permissions
    - Authentication = IAM | Authorization = IAM policy
    - Good to provide access within AWS 
    - Leverages Sig v4 capability where IAM credential are in headers
- Resource policies
    - Similiar to lambda resource
    - Allow for cross account access
    - Allow for a specific source IP address
    - Allow for a VPC endpoint
- Cognito
- Lambda authorizer
    - Token based authorizer
    - A request parameter based lambda

# HTTP API vs REST API
- HTTP
    - Low-latency, cost-effective aws
    - support OIDC, and OAuth 2.0 authorization and built in support for CORS


# Websocket API
- two way interactive communcation between a users browser and a server'

# Arc