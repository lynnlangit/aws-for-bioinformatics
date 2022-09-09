# Use AWS for Virtual Machines & Batch Computing

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/images/pipeline-arch.png" width=800>

In this section, you'll get information about using AWS services to run Virtual Machines (VMs) or batch computing on AWS to run data pipeline (workflow) genomic analysis jobs on AWS.  The general pattern is shown in the diagram above.  

To do this, you'll use AWS EC2 VMs, which are called EC2 instances.  Additionally you can use services to orchestrate clusters of VMs or docker containers such as Elastic Kubernetes Engine (or K8), information on containers in the next section of this repo. 

Alternatively you can use bioinformatics pipeline & workflow languages and services to coordinate groups of VMs or containers.  These APIs include Nextflow, WDL/cromwell and others.

### Here are the topic pages in this section:

- Use AWS EC2 Virtual Machines
- Use AWS Batch for batch computing
- Use Nextflow for Pipelines API
- Use Cromwell and WDL for Pipelines API (PAPI)

There are a number of possible ways to construct high volume data analysis workflows or pipelines on AWS with these purpose-built APIs.  In addition there is a specialized AWS API for scaling Genomics workloads on the AWS. This API is named AWS Batch.

## AWS VM Genomic Example 

From CZI Science - a cloud-based genomic analysis tool, IDSeq, now named `CZ ID` - [link](https://czid.org/) to tool and [link](https://academic.oup.com/gigascience/article/9/10/giaa111/5918865) to paper (AWS architecture image shown below)

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/images/idseq-czi-aws.png" width=800>

* * *



