# Setup Continuous Integration and Continuous Deployment

### Why do this
 - USE AWS to host to set up CI/CD pipeline
 - BUILD a AWS serverless and integrated CI/CD pipeline 
 - CREATE a blueprint for AWS infrastructure for reproducible research

### What is this
 - CI/CD services hosted on AWS - uses AWS CodeCommit, CodeBuild, CodeDeploy, CodePipeline, and CloudFormation
 - Often used with AWS Elastic Container Registry (ECR) and AWS Elastic Container Service (ECS)

### How to do this
 - DO the steps in this article 'Getting Started with AWS CI/CD' - [link](https://aws.amazon.com/getting-started/hands-on/set-up-ci-cd-pipeline/)


### How to verify you've done it
 - PUSH updated application or configuration code to your Source Repository
 - VERIFY updated service and application code works as expected via manual or automated tests
 - REVIEW associated service logs

### Other Things to Know
- CI/CD pipeline can be used to deploy infrastructure as code (IaC) using CloudFormation
- CI/CD pipeline can be used to deploy application code to AWS services, such as ECS, EKS, or EC2
- CI/CD pipeline can be used to deploy application code to on-premises servers

### How to learn more
 
  - 📘 Read about CI/CD concepts in this [article](https://read.acloud.guru/cloud-based-ci-cd-on-AWS-6b07fde7222d)
