# Use Nextflow for Genomic Data Analysis

### Why do this
 USE the Nextflow pipeline language to define and run your genomic data analysis workflows (also called pipelines or jobs) at scale on the cloud or on-prem environment of your choosing.

### What is this
Nextflow is a reactive bioinformatics workflow framework & DSL for writing data-intensive computational pipelines.  Run jobs as scripts or containers on a single AWS EC2 Virtual Machine or a cluster of VMs. You can use AWS Batch to orchestrate your Nextflow jobs.
 - Understand core Nextflow features - [link](https://www.nextflow.io/index.html#Features)
 - Nextflow can run on AWS or many other providers (i.e. Azure, GCP, HPC, etc...) using its configurable *Executors* feature
 - Nextflow can run jobs on AWS in several ways...
   - On a single EC2 VMs (can run bioinformatics tools from Docker)
   - On multiple EC2 VMS using the **& AWS Batch** API (configured via the `nextflow.config` file)
   - On ECS clusters with mulitple Docker container images (runs on EC2 VMS) using the **& AWS Batch** API (configured via the `nextflow.config` file)
   - Via the Nextflow Seqera Platform using ECS clusters using the **& AWS Batch** API - see this [page](https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/3a_Use_Seqera_for_Nextflow.md)

Shown below is a reference architecture for running Nextflow analysis on AWS using the AWS Batch API.  
- From this article - part one [link](https://seqera.io/blog/nextflow-and-aws-batch-inside-the-integration-part-1-of-3/) and part two [link](https://seqera.io/blog/nextflow-and-aws-batch-inside-the-integration-part-2-of-3)

![Nextflow Architecture using AWS Genomics/AWS Batch](https://cdn.sanity.io/images/o2y1bt2g/seqera/e06e8ffd4c59c1281c4cd94243774d42235503eb-1600x758.png?w=1736&fit=max&auto=format)

### How to do this
 - SETUP prereqs for Nextflow on your VM - JDK, Docker, Graphviz(optional)
 - RUN VariantCalling pipeline w/GATK - [link](https://github.com/CRG-CNAG/CalliNGS-NF/)

---

### How to verify you've done it
 - VERIFY using a short example script - [link](https://gist.github.com/lynnlangit/c1ed2a3535b3ae6711dd14687d5174c3)
 - VERIFY the output files from the examples above
 - REVIEW Nextflow examples which produce files in a `results` folder

### Other Nextflow Tools 
The Nextflow ecosystem includes a growing set of tools for scripting, registering, monitoring and tracing pipelines in addition to Seqera for running and monitoring pipeline jobs.
 - 📘 Use [nf-core](https://nf-co.re/) for locating reusable Nextflow pipelines
 - 📘 Use [Wave containers](https://www.nextflow.io/docs/latest/wave.html) for provisioning containers (with bioinformatics tools) for Nextflow pipelines
 - 📘 Use [nf-core tools](https://nf-co.re/tools) for configuring, running, monitoring and managing reusable Nextflow pipelines
 - 🗄️ Link to [Nextflow test datasets](https://github.com/nf-core/test-datasets)
 - 📘 Use [Nextflow cli](https://www.nextflow.io/docs/edge/cli.html) for scripting 
 - 📘 Use [Nextflow tracing & viz tools](https://www.nextflow.io/docs/latest/tracing.html) for monitoring pipeline runs
 - 📘 Link to [using `resume` with Nextflow](https://www.nextflow.io/blog/2019/demystifying-nextflow-resume.html)
 
---
 
### How to learn more

#### General Nextflow
 - 📘 Link to [Nextflow training](https://training.nextflow.io/)
 - 📘 Huge list of [Learn Nextflow links](https://www.nextflow.io/blog/2022/learn-nextflow-in-2022.html)
 - 📘 Link to [Nextflow code patterns](http://nextflow-io.github.io/patterns/index.html)
 - :octocat: Link to [Awesome Nextflow links](https://github.com/nextflow-io/awesome-nextflow)
 - 📘 Build [Containers for Scientific Workflows](https://seqera.io/blog/building-containers-for-scientific-workflows/)
 - 📺 Watch Nextflow presentations - [link](https://www.nextflow.io/presentations.html)
 - 📘 Link to [using Nextflow with Kubernetes](https://www.nextflow.io/docs/edge/kubernetes.html) - high-level architecture shown in the linked article
 - 📘 Read about [Pipeliner for Nextflow paper](https://www.biorxiv.org/content/biorxiv/early/2018/11/23/476515.full.pdf)

 
---

### About Nextflow on AWS

#### General Guidance
 - 📘 Read Nextflow pipelines with AWS (docs) - [link](https://www.nextflow.io/docs/latest/awscloud.html)
 - 📘 Example from Fred Hutch Cancer center: ["Running Nextflow Workflows on AWS (Batch)"](https://sciwiki.fredhutch.org/datademos/on_aws/)
 - 📘 Read Article: "Fusion file system and Mountpoint for Amazon S3 – understanding the differences" - [link](https://seqera.io/blog/mountpoint-for-amazon-s3-vs-fusion-file-system/)
 - 📘 Link to [Step-by-Step Guide to Running AI Workloads on AWS w/ NF-Tower](https://seqera.io/blog/running-ai-workloads-in-the-cloud-with-nextflow-tower-a-step-by-step-guide/)
 - :octocat: Link to [Notes on AWS Batch and NF](https://github.com/stevekm/nextflow-demos/tree/master/aws-batch)
   
 #### Example Pipelines 
 - 💻 Link to [Running GATK workflows on AWS: a user-friendly solution](https://aws.amazon.com/blogs/industries/running-gatk-workflows-on-aws-a-user-friendly-solution)
 - 📘 Link to using [NF protein-DNA interactions and epigenomic profiling pipeline QC testing & viz tools with CI/CD](https://nf-co.re/cutandrun)
    - pipeline image (subway map style) shown below.
 - 🏃 Command to run a NF workflow using The Broad's `GATK 4` tools with Nextflow.io use this command 
    - `nextflow run CRG-CNAG/CalliNGS-NF -r gatk4 -with-docker`
 - 📘 Link to run a [NF workflow with ML for cancer image classification](https://aws.amazon.com/blogs/hpc/leveraging-seqera-platform-on-aws-batch-for-machine-learning-workflows-part-1-of-2/)

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch/images/cutandrun-flow-diagram-v1-0_2.png" width=1000>







  
