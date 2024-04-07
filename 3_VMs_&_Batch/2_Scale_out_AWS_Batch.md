# Use AWS Batch to Scale Jobs

## What is AWS Batch? 

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/images/batch-concepts.png" width=500 align=left>

AWS Batch is a managed service designed to efficiently run large numbers of batch computing jobs at scale on the AWS Cloud.  
Unlike HPC, Batch *dynamically* provisions compute clusters, using the quantity and type of compute resources (e.g., CPU or memory optimized instances) that you specify.  

AWS Batch can run batch jobs in one of three possible types of AWS compute environments:
1. EC2 (with SPOT instances optionally) - virtual machines
2. Fargate (ECS) - Fargate-managed container clusters on virtual machines
3. EKS (Kubernetes) - Kubernetes-managed container clusters on virtual machines
 
---

AWS Batch is designed to be flexible and efficient, so that you can run batch jobs of any scale.  Sample AWS WebUI screens are shown below.

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/images/batch-ui1.png">
<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/images/batch-ui2.png">

### Why do this
Scale out your bioinformatics pipeline analysis using [`AWS Batch`](https://aws.amazon.com/batch/) to manage compute resources (VMs and Containers) to manage the pipeline job queue.
### What is this
- USE AWS S3 + AWS Batch + custom code + Athena to create **serverless** end-to-end scalable genomic analysis jobs
- USE **AWS Batch** to orchestrate scalable genomic analysis running EC2 **without** manually configuring scaling of your compute cluster. The API is designed to be a backend for bioinformatics tools (ex. dsub) or systems (cromwell), by providing job scheduling for Docker-based tasks that perform secondary genomic analysis by running container images on one or more EC2 Virtual Machines. Typical secondary analysis jobs include filtering raw reads, aligning and assembling sequence reads, and QA and variant calling on aligned reads.
- USE **Athena** to analyze variants using the SQL query language.

### Key considerations
- spot instances are cheaper but can be terminated at any time
- containerized jobs are more portable and easier to scale
- EC2 instance size and type can be configured to meet your needs

### How to do this

To use AWS Batch, you can use the awscli or the AWS console. The following steps will use the awscli.  The AWS console is available at https://console.aws.amazon.com/batch/.

    #Create a job queue
    `aws batch create-job-queue --job-queue-name <job-queue-name> --state ENABLED --priority 1 --compute-environment-order order=1,computeEnvironment=<compute-environment-name>`
    
    #Create a compute environment
    `aws batch create-compute-environment --compute-environment-name <compute-environment-name> --type MANAGED --state ENABLED --compute-resources type=EC2,minvCpus=0,maxvCpus=256,desiredvCpus=0,instanceTypes=t2.micro,t3.micro,t3.small,t3.medium,t3.large,t3.xlarge,t3.2xlarge,subnets=<subnet-id>,securityGroupIds=<security-group-id>,instanceRole=<instance-role-arn>,tags=Name=<compute-environment-name>`
    
    #Create a job definition
    `aws batch register-job-definition --job-definition-name <job-definition-name> --type container --container-properties image=<container-image>,vcpus=1,command=["<command>"],memory=1024`
    
    #Submit a job
    `aws batch submit-job --job-name <job-name> --job-queue <job-queue-name> --job-definition <job-definition-name>`
    
    #Check the status of a job
    `aws batch describe-jobs --jobs <job-id>`
    
### What to do next
- Use AWS Batch to run your bioinformatics pipeline
- Use AWS Batch to run your bioinformatics pipeline on AWS Fargate
- Use AWS Batch to run your bioinformatics pipeline on AWS Spot Instances


### AWS Resources for AWS Batch
- [AWS Batch](https://aws.amazon.com/batch/)
- [AWS Batch Best Practices](https://docs.aws.amazon.com/batch/latest/userguide/best-practices.html)
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


### Other Things to Know and Examples
- There are a number of bioinformatics libraries (cromwell, Nextflow....) that are can use AWS Batch as an `execution backend provider`
- AWS Reference: [AWS Batch for Genomics](https://docs.opendata.aws/genomics-workflows/core-env/introduction.html)
- GitHub Repo: [AWS Batch Architecture for Protein Folding](https://github.com/aws-solutions-library-samples/aws-batch-arch-for-protein-folding)


