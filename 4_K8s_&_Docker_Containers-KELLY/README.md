# Use AWS for Kubernetes & Docker Containers

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/images/pipeline-arch.png" width=800>

In this section, you'll get information about using AWS services to run docker container clusters which are managed by Kubernetes (or K8) service.  These Kubernetes clusters run on AWS EC2 VMs and are used to run data pipeline (workflow) genomic analysis jobs on AWS.  The general pattern is shown in the diagram above.  You'll use services to orchestrate clusters of VMs or docker containers such as Elastic Kubernetes Engine (or K8).  

Alternatively you can use bioinformatics pipeline & workflow languages and services to coordinate groups of VMs or containers.  These APIs include Nextflow, cromwell/WDL and others.

Here are the topic pages in this section:

- Test Docker Container Image for Pipeline
- Orchestrate Containers with GKE (Kubernetes)
- Use AWS Batch with Kubernetes
- Use Nextflow for Pipelines API

There are a number of possible ways to construct high volume data analysis workflows or pipelines on AWS with these purpose-built APIs.  In addition there is a specialized AWS API for scaling Genomics workloads on the AWS. This API is named AWS Batch.  

### Read Examples

- For a perspective on different possible ways to run a bioinformatics tool, read my article
- Review my articles
    - `Blast 10 Ways - Adventures in Bioinformatics Tool Deployments` 
    - published on [Medium.](https://medium.com/@lynnlangit/blast-10-ways-3db78f881059)
    - CSIRO DataLake Articles ---xxx, yyy and zzz (on Medium)


