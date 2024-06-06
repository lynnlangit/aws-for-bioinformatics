# Use Seqera for Nextflow for Genomic Data Analysis

### Why do this & What is this
- USE the [Seqera tools for the Nextflow pipeline language](https://cloud.seqera.io/) to define and run your genomic data analysis workflows (also called pipelines or jobs) at scale on the cloud or on-prem environment of your choosing with minimal manual configuration and rich job run information visualizations. NOTE: Seqera tools was previously named 'NF-Tower' or 'Tower Forge'.
- USE **Nextflow tools** with Nextflow for ease of use with AWS Batch.  You can use AWS Batch to orchestrate your Nextflow jobs.

### How to do (and verify) this
 - TEST one or more example (community) Nextflow pipelines by creating job runs on the Seqera Platform - [link](https://cloud.seqera.io/) using either [Tower Forge or Manual](https://docs.seqera.io/platform/23.4.0/compute-envs/aws-batch)
 - CONFIGURE credentials for your own runtime environment (AWS, GCP...)
 - CONFIGURE pipeline params to use your own sample (input) data
 - REVIEW job run output in the Seqera Platform.  Examples screens shown below.

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/images/seq-1.png" width=500>
<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/images/seq-2.png" width=500>
<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/images/seq-3.png" width=500>
<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/images/seq-4.png" width=500>


### Other Nextflow Tools 
The Nextflow ecosystem includes a growing set of tools for scripting, registering, monitoring and tracing pipelines in addition to Seqera for running and monitoring pipeline jobs.
 - 📘 Use [nf-core](https://nf-co.re/) for locating reusable Nextflow pipelines
 - 📘 Use [Wave containers](https://www.nextflow.io/docs/latest/wave.html) for provisioning containers (with bioinformatics tools) for Nextflow pipelines
 - 📘 Use [nf-core tools](https://nf-co.re/tools) for configuring, running, monitoring and managing reusable Nextflow pipelines
 - 📘 Use [Nextflow cli](https://www.nextflow.io/docs/edge/cli.html) for scripting 
 - 📘 Use [Nextflow tracing & viz tools](https://www.nextflow.io/docs/latest/tracing.html) for monitoring pipeline runs
 
---


#### NF runnable Genomic Pipeline Examples
 - 📘 Link to [Step-by-Step Guide to Running AI Workloads on AWS w/ Seqera](https://seqera.io/blog/running-ai-workloads-in-the-cloud-with-nextflow-tower-a-step-by-step-guide/)
 - 📘 Link to using [NF protein-DNA interactions and epigenomic profiling pipeline QC testing & viz tools with CI/CD](https://nf-co.re/cutandrun)
    - pipeline image (subway map style) shown below.
    - to run on Seqera Platform `tw launch https://github.com/nf-core/cutandrun -r 3.2.2`
 - 🏃 Command to run a NF workflow using The Broad's `GATK 4` tools with Nextflow.io use this command 
    - `nextflow run CRG-CNAG/CalliNGS-NF -r gatk4 -with-docker`
 - 📘 Link to run a [NF workflow with ML for cancer image classification](https://aws.amazon.com/blogs/hpc/leveraging-seqera-platform-on-aws-batch-for-machine-learning-workflows-part-1-of-2/)

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/images/cutandrun-flow-diagram-v1-0_2.png" width=600>







  
