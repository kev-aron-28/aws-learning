# EC2 instance metadata (IMDS)
- Is a powerful but one of the least known ffeatures to developers
- Allows EC2 instances to learn about themselvs without using an IAM role for that purpose
- 169.254.169.254/latest/metadata
- YOu can retrieve the IAM role name from the metadata but cant retrieve policies

# How to use MFA with CLI
To use MFA with the CLI you must create a temporary session
 To do so, you must run the STS GetSessionToken API CAll


# AWS limits
API rate limits
    - DescribeInstacnes API for EC2 has a limit of 100 calls per second
    - GetObject on S3 has a limit 5500 GET per second per prefix
    - For Intermittent Errors: implement Exponential Backoff
    - For consistent Errors: request an API throttling limit increase

If you get ThrottlingException: use exponential backoff, the retry mechanism already included in AWS SDK API calls
    - Must implement yourself using the AWS api as-is