# Use Nextflow for Pipelines on Containers 

### Why do this
 USE the Nextflow pipeline language to define and run your analysis workflow at scale 
 NOTE: See the full explanation for this architecture at this [link](https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/3_Use_Nextflow_for_Pipelines.md)

### What is this
 Nextflow is a reactive workflow framework & DSL for writing data-intensive computational pipelines.  Run jobs on a single AWS EC2 Virtual Machine or a cluster of VMs. You can use AWS Batch to orchestrate your Nextflow jobs.
 - Nextflow can run on AWS or many other providers (i.e. Azure, GCP, HPC...)
 - Nextflow can run on AWS in several ways:
   - Run jobs on a single EC2 VMs (can run bioinformatics tools from Docker)
   - Run jobs on mulitple EC2 VMS using the **& AWS Batch** API
   - Run jobs on mulitple Docker container images on ECS clusters (runs on EC2 VMS) using the **& AWS Batch** API
   - Run jobs on mulitple Docker container images on ECS clusters (runs on EC2 VMS) using the **& AWS Batch** API using the Nextflow Seqera Platform

### AWS Reference Architecture

Shown below is a reference architecture for running Nextflow analysis on AWS using the AWS Batch API.  
- From this article - part one [link](https://seqera.io/blog/nextflow-and-aws-batch-inside-the-integration-part-1-of-3/) and part two [link](https://seqera.io/blog/nextflow-and-aws-batch-inside-the-integration-part-2-of-3)

![Nextflow Architecture using AWS Genomics/AWS Batch](https://seqera.io/static/e732bd2954e8b788415d353acbf60614/42cbc/blog-nextflow-and-aws-batch-inside-the-integration-part-1-of-3-1.png)



  
