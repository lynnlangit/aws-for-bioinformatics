# Service Patterns for Bioinformatics on AWS

This page describes some common patterns & use cases for bioinformatic research which runs on the ☁️ AWS Cloud.
If you're new to working with public cloud services, including those available from ☁️ AWS, you can start by considering the 3 main categories of services available for you to use in cloud computing:
- 🔷 **Storage** - for files or data - referred to as storage 'buckets' or managed databases (such as MySQL)
- 🔶 **Compute** - for calculation at scale - often called 'VMs or virtual machines'.  Docker container image clusters are part of this category as well.
- 🔴 **Other Services** - other services, such as security configuration (permissions and encyrption), networks or machine learning services   

### 1. Use public Genomic Reference Datasets

☁️ AWS hosts a number of genomic reference datasets stored as files.  You can view these files by using a ☁️ AWS client (Web UI or script) to **browse** to publicaly available files in ☁️ AWS EC2 storage buckets.  A key advantage to using these datasets in your cloud-based research, is that you do not have to upload these large (or huge) files to AWS.  You can simply refer to the AWS location, i.e. `s3://{public-bucket-name}/{folder-name}/file....` in your research job configuration.

###  2. Try out bioinformatics tools

Rather than installing bioinformatics scripts, tools or libraries and their dependencies on your local laptop, you can use ☁️ AWS to quickly start a cloud-based 'development machine'. Do this by using services such as 🔶 EC2 to create customized Virtual Machines instances.  

Additionally, many ☁️ AWS services, such as 🔶 EC2 or Elastic Kubernetes Service support running docker container images, such as those on [biocontainers](https://biocontainers.pro/#/), which include commonly used bioinformatics tools such as blastn, bamstats, GATK, Hail and others.  This means you can quickly and easily 'try out' bioinformatics analysis tools by running them in docker container images on ☁️ AWS, rather than having to install and configure docker tools and any other dependencies locally in order to be able to run these tools.

### 3.  Run Jupyter Notebooks 

There are a number of options for running Jupyter notebooks using ☁️ AWS services.  This includes starting specially pre-configured, ☁️ AWS SageMaker Notebook instances. These instances already include the Jupyter libraries, so you don't have to install anything to be able to run Jupyter notebooks on them.

Also, notebooks which run computationally intensive analysis, such as machine learning with deep neural network libraries (i.e. TensorFlow) can be run on ☁️ AWS with more powerful processors (GPUs in addtion to CPUs) without you having to install hardware drivers for those specialty processes on a machine.


### 4.  Run Bioinformatics Analysis Jobs at (GWAS) scale

A key reason to move from local to cloud-based computing is the ability to scale out large-sized analysis jobs. Running on ☁️ AWS can address the 'my job won't run on my laptop' (or on my on-premise HPC cluster) problem. However, efficiently scaling compute services can be quite complex.   Also there are many different cloud services and methods available to do this on AWS (🔶 EC2 VM auto-scalers, AWS Batch Service, EKS Kubernetes clusters for docker container images....). A key pattern is to use [EC2 VM spot instances](https://aws.amazon.com/ec2/spot/) to save money as you scale out clusters.

## General User Story Map for Bioinformatics

Here is a link to a general USER STORY map - [link](https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/7_REF_Info/whitepapers/user-stories.pdf)
