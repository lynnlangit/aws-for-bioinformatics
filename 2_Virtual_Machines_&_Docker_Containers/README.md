# Use AWS for Virtual Machines & Docker Containers

In this section, you'll get information about using AWS services to run Virtual Machines (VMs) or docker container images on AWS.  You'll use AWS EC2 VMs, which are called EC2 instances.  Additionally you can use services to orchestrate clusters of VMs or docker containers such as Elastic Kubernetes Engine (or K8).  

Alternatively you can use bioinformatics pipeline & workflow languages and services to coordinate groups of VMs or containers.  These APIs include WDL/cromwell, Nextflow and others.

You'll also see how to create a Notebook VM instance using a AWS template, so that you can use a Jupyter notebook for your analysis job.

Here are the topic pages in this section:

- Use Google Compute Engine Virtual Machines
- Use Jupyter Notebook VM Instance
- Use Terra.bio Jupyter Notebook
- Test Docker Container Image for Pipeline
- Orchestrate Containers with GKE (Kubernetes)
- Use Google Life Sciences API (was Genomics API or Pipelines API)
- Use Cromwell and WDL for Pipelines API (PAPI)
- Use Terra.bio Workflow
- Use Nextflow for Pipelines API
- Use dsub for Pipelines API
- Use Galaxy Project for Pipelines API


Bioinformatics APIs (or workflow languages) include the following: dsub, cromwell/WDL, Terra.bio (which implements cromwell/WDL on GCP) and Nextflow. 

There are a number of possible ways to construct high volume data analysis workflows or pipelines on AWS with these purpose-built APIs.  In addition there is a specialized AWS API for scaling Genomics workloads on the AWS. This API is named the AWS Batch.  

### Use a Map

An interactive representation (one view shown below) for several of the possible build paths for bioinformatics workflows on GCP (and in other environments, including AWS, HPC and more) is shown below.  To work with the interactive MindMap, **open this link in a NEW web page** -- https://atlas.mindmup.com/lynnlangit/bioinformatics_container_based_pipelines/index.html

[![workflows](/images/workflows.png)]() 

### Read Examples

- For a perspective on different possible ways to run a bioinformatics tool, read my article
- Review Article 
    - `Blast 10 Ways - Adventures in Bioinformatics Tool Deployments` 
    - published on [Medium.](https://medium.com/@lynnlangit/blast-10-ways-3db78f881059)
- Read a new book 
    - `Genomics in the Cloud -  using Docker, GATK, and WDL in Terra`
    - published [link](http://shop.oreilly.com/product/0636920058182.do) to preview this book on O'Reilly

