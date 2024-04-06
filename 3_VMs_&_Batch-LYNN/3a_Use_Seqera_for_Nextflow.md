# Use Seqera for Nextflow for Genomic Data Analysis

### Why do this
 USE the [Seqera tools for the Nextflow pipeline language](https://cloud.seqera.io/) to define and run your genomic data analysis workflows (also called pipelines or jobs) at scale on the cloud or on-prem environment of your choosing with minimal manual configuration and rich job run information visualizations.

### What is this
Use tools with Nextflow for ease of use.  Run jobs as scripts or containers on a single AWS EC2 Virtual Machine or a cluster of VMs. You can use AWS Batch to orchestrate your Nextflow jobs.
 - Understand core Nextflow features - [link](https://www.nextflow.io/index.html#Features)
 - Nextflow can run on AWS or many other providers (i.e. Azure, GCP, HPC...)
 - Nextflow can run on AWS in several ways:
   - Run jobs on a single EC2 VMs (can run bioinformatics tools from Docker)
   - Run jobs on mulitple EC2 VMS using the **& AWS Batch** API
   - Run jobs on mulitple Docker container images on ECS clusters (runs on EC2 VMS) using the **& AWS Batch** API
   - Run jobs on mulitple Docker container images on ECS clusters (runs on EC2 VMS) using the **& AWS Batch** API using the Nextflow Seqera Platform


### How to do (and verify) this
 - TEST one or more example (community) Nextflow pipelines by creating job runs on the Seqera Platform - [link](https://cloud.seqera.io/)
 - CONFIGURE credentials for your own runtime environment (AWS, GCP...)
 - CONFIGURE pipeline params to use your own sample (input) data
 - REVIEW job run output in the Seqera Platform.  Examples screens shown below.


### Nextflow Tools 
The Nextflow ecosystem includes a growing set of tools for scripting, registering, monitoring and tracing pipelines.  
 - 📘 Link to using [Nextflow cli](https://www.nextflow.io/docs/edge/cli.html) for scripting 
 - 📘 Link to using [Nextflow Tower](https://www.seqera.io/blog/introducing-nextflow-tower/) for monitoring - screenshot shown below
 - 📘 Link to using [Nextflow tracing & viz tools](https://www.nextflow.io/docs/latest/tracing.html)
 
---


#### NF runnable Genomic Pipeline Examples
 - 📘 Link to [Step-by-Step Guide to Running AI Workloads on AWS w/ Seqera](https://seqera.io/blog/running-ai-workloads-in-the-cloud-with-nextflow-tower-a-step-by-step-guide/)
 - 📘 Link to using [NF protein-DNA interactions and epigenomic profiling pipeline QC testing & viz tools with CI/CD](https://nf-co.re/cutandrun)
    - pipeline image (subway map style) shown below.
 - 🏃 Command to run a NF workflow using The Broad's `GATK 4` tools with Nextflow.io use this command 
    - `nextflow run CRG-CNAG/CalliNGS-NF -r gatk4 -with-docker`
 - 📘 Link to run a [NF workflow with ML for cancer image classification](https://aws.amazon.com/blogs/hpc/leveraging-seqera-platform-on-aws-batch-for-machine-learning-workflows-part-1-of-2/)

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/images/cutandrun-flow-diagram-v1-0_2.png" width=1000>







  