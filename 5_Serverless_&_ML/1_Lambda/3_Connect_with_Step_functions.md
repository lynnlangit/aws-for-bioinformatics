# Serverless Workflows with AWS Step Functions

### Why do this
 CREATE a serverless workflow on AWS quickly

### What is this
 - USE AWS Step Functions to create a serverless workflow using a YAML file which defines workflow steps
- AWS AWS Step Functions allows you to orchestrate and automate both your AWS and external HTTP-based API services into serverless workflows
 - AWS AWS Step Functions commonly 'string together' the outputs from such as AWS Lambda and other AWS Serverless services

### Key considerations
 - SETUP a AWS Service account with the "roles/run.invoker" permission
 - UNDERSTAND AWS Step Functions adds service cost to workflows

### How to do this
 - CREATE your Lambda instances.  These will be tasks in your workflow
 - CREATE a YAML file to describe and define task execution and output flow for your workflow
 - USE a Quickstart - [link](https://aws.amazon.com/blogs/compute/serverless-workflows-with-aws-step-functions/)

### How to verify you've done it
 - RUN your workflow
 - REVIEW the AWS logs to verify the result of the workflow invocations 

### Other Things to Know
 - Step Functions features - [link](https://aws.amazon.com/blogs/compute/step-functions-features/)
 - Serverless autoscales (to your AWS account limits) by default
 - USE AWS Secrets Manager to store secrets (API keys, etc...) with AWS Workflows

### How to learn more
 - :octocat: Link to [code example](https://github.com/awslabs/aws-serverless-workflows/blob/master/examples/step-functions-example.yaml)
- 📘 Link to [pricing example](https://aws.amazon.com/serverless-workflows/pricing/)
- 📘 Link to implementable example w/Step Functions (includes CF templates) and architecture shown below - [link](https://aws.amazon.com/solutions/implementations/genomics-secondary-analysis-using-aws-step-functions-and-aws-batch/)

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/5_Serverless_%26_ML/1_Lambda/images/secondary-step-functions.png" width=800>
 
