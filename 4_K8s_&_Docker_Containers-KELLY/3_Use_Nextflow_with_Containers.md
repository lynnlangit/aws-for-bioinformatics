# Use Nextflow for Pipelines on Containers 

### Why do this
 USE the Nextflow pipeline language to define and run your analysis workflow at scale 
 NOTE: See the full explanation for this architecture at this [link](https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/3_Use_Nextflow_for_Pipelines.md)

### What is this
Nextflow is a reactive bioinformatics workflow framework & DSL for writing data-intensive computational pipelines.  Run jobs as scripts or containers on a single AWS EC2 Virtual Machine or a cluster of VMs. You can use AWS Batch to orchestrate your Nextflow jobs.
 - Understand core Nextflow features - [link](https://www.nextflow.io/index.html#Features)
 - Nextflow can run on AWS or many other providers (i.e. Azure, GCP, HPC, etc...)
 - Nextflow can run jobs on AWS in several ways...
   - On a single EC2 VMs (can run bioinformatics tools from Docker)
   - On mulitple EC2 VMS using the **& AWS Batch** API
   - On ECS clusters with mulitple Docker container images (runs on EC2 VMS) using the **& AWS Batch** API
   - Via the Nextflow Seqera Platform using ECS clusters using the **& AWS Batch** API - see this [page](https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/3a_Use_Seqera_for_Nextflow.md)

### AWS Reference Architecture

Shown below is a reference architecture for running Nextflow analysis on AWS using the AWS Batch API.  
- From this article - part one [link](https://seqera.io/blog/nextflow-and-aws-batch-inside-the-integration-part-1-of-3/) and part two [link](https://seqera.io/blog/nextflow-and-aws-batch-inside-the-integration-part-2-of-3)

![Nextflow Architecture using AWS Genomics/AWS Batch](https://seqera.io/static/e732bd2954e8b788415d353acbf60614/42cbc/blog-nextflow-and-aws-batch-inside-the-integration-part-1-of-3-1.png)



  
