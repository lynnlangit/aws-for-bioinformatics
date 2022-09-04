# Use AWS for Virtual Machines & Batch Computing

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/images/pipeline-arch.png" width=800>

In this section, you'll get information about using AWS services to run Virtual Machines (VMs) or batch computing on AWS to run data pipeline (workflow) genomic analysis jobs on AWS.  The general pattern is shown in the diagram above.  

To do this, you'll use AWS EC2 VMs, which are called EC2 instances.  Additionally you can use services to orchestrate clusters of VMs or docker containers such as Elastic Kubernetes Engine (or K8), information on containers in the next section of this repo. 

Alternatively you can use bioinformatics pipeline & workflow languages and services to coordinate groups of VMs or containers.  These APIs include Nextflow, WDL/cromwell and others.

Here are the topic pages in this section:

- Use AWS EC2 Virtual Machines
- Use AWS Batch for batch computing
- Use Nextflow for Pipelines API
- Use Cromwell and WDL for Pipelines API (PAPI)

There are a number of possible ways to construct high volume data analysis workflows or pipelines on AWS with these purpose-built APIs.  In addition there is a specialized AWS API for scaling Genomics workloads on the AWS. This API is named AWS Batch.

***FROM OTHER REPO***

# AWS Support for Genomic Workloads
AWS includes services, tools and partner integrations which support multiple types of genomic workloads.  The diagram below shows various stages/types.

<img src="https://github.com/lynnlangit/TeamTeri/blob/master/Images/aws-genomics-concepts.png">

## Genomic Datasets on AWS
* **Genomic Datasets** on AWS -- https://registry.opendata.aws/tag/genomic/
* **1000 Genomes Dataset** -- https://aws.amazon.com/1000genomes/

## AWS for Genomics Pipelines
Services, tools, patterns, practices and demos from AWS for Genomics pipelines - a conceptual example is shown in the diagram below.  

![AWS Genomics](https://github.com/lynnlangit/TeamTeri/blob/master/Images/AWS-Genomics.png)

### Patterns and Best Practices for Genomics on AWS

* **MAIN** AWS for life sciences  -- https://aws.amazon.com/health/life-sciences/
* **GENOMICS** AWS for Genomics -- https://aws.amazon.com/health/genomics/
* **BEST PRACTICES** -- https://d0.awsstatic.com/whitepapers/compliance/AWS_dBGaP_Genomics_on_AWS_Best_Practices.pdf
* **WORKFLOWS** on AWS for Genomics (examples) -- https://docs.opendata.aws/genomics-workflows/ and [link to repo](https://github.com/aws-samples/aws-genomics-workflows)
* **AWS Genomics API** -- https://aws.amazon.com/blogs/aws/new-amazon-genomics-cli-is-now-open-source-and-generally-available/
* **COST EFFECTIVE** workflows -- https://docs.opendata.aws/genomics-workflows/orchestration/cost-effective-workflows/cost-effective-workflows/

## Genomics Platforms on AWS

* **Seven Bridges, R and AWS** -- https://aws.amazon.com/blogs/big-data/extending-seven-bridges-genomics-with-amazon-redshift-and-r/
* **IDSeq on AWS** -- https://www.discoveridseq.com/
* **Databricks Genomics and AWS** -- https://databricks.com/blog/2019/06/26/scaling-genomic-workflows-with-spark-sql-bgen-and-vcf-readers.html example architecture shown below

<img src="https://github.com/lynnlangit/TeamTeri/blob/master/Images/databricks-genomics.png" width=800>

* * *



