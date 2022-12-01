# Use Amazon Omics

## What is Amazon Omics? 
Amazon Omics is a purpose-built service to help bioinformaticians, researchers, and scientists store, query, and analyze genomic, transcriptomic, and other omics data and then generate insights from that data to improve health and advance scientific discoveries.

### Why do this
Use [`Amazon Omics`](https://aws.amazon.com/omics/) to build quickly for common use cases, such as:
- **Genomics** - Store, query, and analyze genomic data to identify genetic variants and their impact on human health.
- **Transcriptomics** - Store, query, and analyze transcriptomic data to identify gene expression patterns and their impact on human health.
- **Proteomics** - Store, query, and analyze proteomic data to identify protein expression patterns and their impact on human health.

### What is this
- USE Amazon Omics purpose-built genomic file stores to quickly store, query, and analyze genomic, transcriptomic, and proteomic data.  Concepts shown below.

<img src="3_VMs_&_Batch-LYNN/images/omics-concepts.png">

### Key considerations
- spot instances are cheaper but can be terminated at any time
- containerized jobs are more portable and easier to scale
- EC2 instance size and type can be configured to meet your needs

### How to do this

To use AWS Batch, you can use the awscli or the AWS console. The following steps will use the awscli.  The AWS console is available at https://console.aws.amazon.com/batch/.

#### Create a job queue
`aws batch create-job-queue --job-queue-name <job-queue-name> --state ENABLED --priority 1 --compute-environment-order order=1,computeEnvironment=<compute-environment-name>`

#### Create a compute environment
`aws batch create-compute-environment --compute-environment-name <compute-environment-name> --type MANAGED --state ENABLED --compute-resources type=EC2,minvCpus=0,maxvCpus=256,desiredvCpus=0,instanceTypes=t2.micro,t3.micro,t3.small,t3.medium,t3.large,t3.xlarge,t3.2xlarge,subnets=<subnet-id>,securityGroupIds=<security-group-id>,instanceRole=<instance-role-arn>,tags=Name=<compute-environment-name>`

#### Create a job definition
`aws batch register-job-definition --job-definition-name <job-definition-name> --type container --container-properties image=<container-image>,vcpus=1,command=["<command>"],memory=1024`

#### Submit a job
`aws batch submit-job --job-name <job-name> --job-queue <job-queue-name> --job-definition <job-definition-name>`

#### Check the status of a job
`aws batch describe-jobs --jobs <job-id>`
### What to do next
- Use AWS Batch to run your bioinformatics pipeline
- Use AWS Batch to run your bioinformatics pipeline on AWS Fargate
- Use AWS Batch to run your bioinformatics pipeline on AWS Spot Instances


### Resources
- [AWS Batch](https://aws.amazon.com/batch/)
- [AWS Batch User Guide](https://docs.aws.amazon.com/batch/latest/userguide/what-is-batch.html)
- [AWS Batch Developer Guide](https://docs.aws.amazon.com/batch/latest/userguide/what-is-batch.html)
- [AWS Batch API Reference](https://docs.aws.amazon.com/batch/latest/APIReference/Welcome.html)
- [AWS Batch CLI Reference](https://docs.aws.amazon.com/cli/latest/reference/batch/index.html)
- [AWS Batch Pricing](https://aws.amazon.com/batch/pricing/)
- [AWS Batch FAQs](https://aws.amazon.com/batch/faqs/)
- [AWS Batch Blog](https://aws.amazon.com/blogs/aws/aws-batch/)


 -----


### How to verify you've done it
 - Run your analysis, monitor for correct results (view files in your output bucket)
 - Monitor for service cost, execution time and adjust to meet your requirements


### Other Things to Know
- There are a number of bioinformatics libraries (cromwell, Nextflow....) that are can use AWS Batch as an `execution backend provider`
- Medium Article: [AWS Batch for Genomics](https://medium.com/@awsbio/aws-batch-for-genomics-1b2b2b2b2b2b)


