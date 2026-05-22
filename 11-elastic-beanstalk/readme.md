# Beanstalk

Is a developer centric view of deploying an application on AWS
- it uses the components: EC2, ASG, ELB, RDS

Its a manged service

# Components
- Application
- Application version
- Environment

# Deployment modes
- All at once
- Rolling
- Rolling with additional batches
- Immutable
- Blue gree
- Traffic splitting

# Elastic Beanstalk CLI
We can install an additional CLI called the EB cli

- eb create
- eb status
- eb health
- eb events
- eb logs
- eb open
- eb deploy
- eb config
- eb terminate

# Lifyccle policy
- Elastic beanstalk can store at most 1000 application versions
- if you dont remove old versions, you wont be able to deploy anymore
- To phase out applications versions, use a lifecycle policy:
    - based on time
    - besed on space
- Versions that are currently used wont be deleted

# Extensions
Must be in .ebextensions/ in the root of source code
- yaml json format
- .config extensions
- able to modify some default settings
- ability to add resources such as RDS, ElasticCache, DynamoDB etc

# Elastic BeanStalk cloning

Clone an environment with the exact same configuration
useful for deploying a test version of your application

all resorces and configuration are preserved:
- Load type configuration
- RDS database type
- Environment variables