# Use CloudFormation to deploy services 

### Why do this
 - SCRIPT the service configuration of your research job(s) 
 - REPRODUCE your analysis on another AWS environment (or other public cloud)

### What is this
 - A AWS Deployment is a YAML file which describe a set of AWS services and their configuration properties using files. CloudFormation is the deployment service.

   
-----

### Key considerations
 - Use AWS CloudFormation Deployments to package AWS service for re-deployment on other AWS accounts
  - Use [Terraform templates](https://www.terraform.io/docs/providers/template/d/file.html) rather than AWS Deployments for cross-cloud deployments (i.e. AWS, Alibaba...) 
 
### How to do this
 - WRITE & verify your Deployment (YAML) file
 - USE CloudFormation to execute the deployment on your AWS account

### How to verify you've done it
 - WAIT for the AWS CloudFormtion Deployment Manager to complete the deployment of your services
 - REVIEW the service and log output in the console

### Other Things to Know
 - AWS Marketplace executes service configurations via deployments for open source or commercial software
 - Use AWS Marketplace CloudFormation Templates to quickly deploy popular software, such as WordPress or Jenkins, on AWS

### How to learn more
- [AWS Deployment Manager](https://docs.aws.amazon.com/deploymentmanager/latest/userguide/what-is-deployment-manager.html)
 - :octocat: Link to [cromwell deployment for AWS](https://github.com/hall-lab/cromwell-deployment) - includes scripts to deploy cromwell server & database
