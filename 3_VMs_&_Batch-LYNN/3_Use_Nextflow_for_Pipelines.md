# Use Nextflow for Genomic Data Analysis

### Why do this
 USE the Nextflow pipeline language to define and run your genomic data analysis workflows (also called pipelines or jobs) at scale.

### What is this
 Nextflow is a reactive workflow framework & DSL for writing data-intensive computational pipelines. 
 - Nextflow can run analysis pipeline jobs on AWS or many other cloud vendors (GCP, etc...)
 - Nextflow can run on AWS in two ways:
   - Run jobs on EC2 VMs (can run bioinformatics tools from Docker) --OR--
   - Run jobs efficiently on EC2 using the **& AWS Batch API**

Shown below is a reference architecture for running Nextflow analysis on AWS using the AWS Batch API.  
- From this article - part one [link](https://seqera.io/blog/nextflow-and-aws-batch-inside-the-integration-part-1-of-3/) and part two [link](https://seqera.io/blog/nextflow-and-aws-batch-inside-the-integration-part-2-of-3)

![Nextflow Architecture using AWS Genomics/AWS Batch](https://seqera.io/static/e732bd2954e8b788415d353acbf60614/42cbc/blog-nextflow-and-aws-batch-inside-the-integration-part-1-of-3-1.png)

### Key considerations
- Understand core Nextflow features - [link](https://www.nextflow.io/index.html#Features)

### How to do this
 - SETUP prereqs for Nextflow on your VM - JDK, Docker, Graphviz(optional)
 - RUN VariantCalling pipeline w/GATK - [link](https://github.com/CRG-CNAG/CalliNGS-NF/)

---

### How to verify you've done it
 - VERIFY using a short example script - [link](https://gist.github.com/lynnlangit/c1ed2a3535b3ae6711dd14687d5174c3)
 - VERIFY the output files from the examples above
 - REVIEW Nextflow examples which produce files in a `results` folder

### Other Things to Know
 - RUN short example using Nextflow and the `blastn` tool, running in Docker on a custom GCE VM image - [link](https://medium.com/@lynnlangit/cloud-native-hello-world-for-bioinformatics-7831aecc8d1a)
 - FIND and run example Nextflow bioinformatics pipelines (such as one for 'rnaseq jobs') at the `nf-core` site - [link](https://nf-co.re/rnaseq/docs)
 - MONITOR running Nextflow pipelines using the visual `Nextflow Tower` tool - [link](https://tower.nf/)
 - REGISTER Nextflow workflows for distribution and reuse in the [Dockstore](https://docs.dockstore.org/docs/prereqs/getting-started-with-nextflow/) genomics workflow registry
    - Note that Nextflow (NF) on Dockstore is a bit different from CWL or WDL. 
    - Instead of having one workflow descriptor file, Nextflow with Dockstore uses two different kinds of files: A config file, `nextflow.config` and a descriptor file, generally called, `main.nf`.

### Nextflow Tools 
The Nextflow ecosystem includes a growing set of tools for scripting, registering, monitoring and tracing pipelines.  
 - 📘 Link to using [Nextflow cli](https://www.nextflow.io/docs/edge/cli.html) for scripting 
 - 📘 Link to using [Nextflow Tower](https://www.seqera.io/blog/introducing-nextflow-tower/) for monitoring - screenshot shown below
 - 📘 Link to using [Nextflow tracing & viz tools](https://www.nextflow.io/docs/latest/tracing.html)
 
---
 
### How to learn more

#### General Nextflow
 - 📘 Link to [Nextflow guide](https://www.nextflow.io/blog/2020/learning-nextflow-in-2020.html)
 - 📘 Link to [Nextflow code patterns](http://nextflow-io.github.io/patterns/index.html)
 - 📘 Link to [Awesome Nextflow links](https://github.com/nextflow-io/awesome-nextflow)
 - 📺 Watch Nextflow presentations - [link](https://www.nextflow.io/presentations.html)
 - 🗄️ Link to [Nextflow test datasets](https://github.com/nf-core/test-datasets)
 - 📘 Link to [using Nextflow with Kubernetes](https://www.nextflow.io/docs/edge/kubernetes.html) - high-level architecture shown in the linked article
 - 💻 Link to [Quickstart using AWS Batch & Nextflow](https://aws-quickstart.s3.amazonaws.com/quickstart-nextflow/doc/nextflow-on-the-aws-cloud.pdf) & [more detail](https://aws.amazon.com/blogs/industries/running-gatk-workflows-on-aws-a-user-friendly-solution)

![Nextflow using AWS Batch](https://github.com/lynnlangit/TeamTeri/blob/master/Images/nextflow-aws-batch.png)
 
 #### Nextflow v2 and Technical Info
 - 📝 Link to Nextflow v2 example workflow - [link](https://gist.github.com/lynnlangit/e5d3e86d632a7db796efae04145d44ff)
 - 📘 Link to Nextflow v2 migration notes - [link](https://www.nextflow.io/docs/latest/dsl2.html#dsl2-migration-notes)
   - 📘 Link to paper on [containerized approaches to workflows(includes Nextflow)](https://www.preprints.org/manuscript/202001.0378/v1/download)
 - 📘 Links to understanding that Nextflow internal architecture.  
   - NF is written in the [Groovy programming language](https://en.wikipedia.org/wiki/Apache_Groovy) 
   - NF is designed to run on [JVM](https://en.wikipedia.org/wiki/Java_virtual_machine) instances 
 - 📺 Watch Nextflow v2 live coding - [link](https://www.youtube.com/watch?v=-Ne4OP0aiYw)

---

### Example NF Pipelines on AWS 

#### Nextflow Pipeline Patterns and Examples
 - 📘 Huge list of [Learn Nextflow links](https://www.nextflow.io/blog/2022/learn-nextflow-in-2022.html)
 - 📘 Read about [Pipeliner for Nextflow paper](https://www.biorxiv.org/content/biorxiv/early/2018/11/23/476515.full.pdf)
 - 📘 Link to [using caching with Nextflow](https://www.nextflow.io/blog/2019/demystifying-nextflow-resume.html)

#### Nextflow on AWS
 - 📘 Read Nextflow pipelines with AWS (docs) - [link](https://www.nextflow.io/docs/latest/awscloud.html)
 - :octocat: Review featured Nextflow pipelines - [link](https://github.com/nextflow-io/awesome-nextflow)
 - 📘 Link to [Step-by-Step Guide to Running AI Workloads on AWS w/ NF-Tower](https://seqera.io/blog/running-ai-workloads-in-the-cloud-with-nextflow-tower-a-step-by-step-guide/)

### Example NF Pipelines on AWS for Bioinformatics 

#### NF runnable Genomic Pipeline Examples
 - 📘 Link to using [NF protein-DNA interactions and epigenomic profiling pipeline QC testing & viz tools with CI/CD](https://nf-co.re/cutandrun) - pipaline image shown below.
 - 📘 Link to run a NF workflow using The Broad's `GATK 4` tools with Nextflow.io use this command 
    - `nextflow run CRG-CNAG/CalliNGS-NF -r gatk4 -with-docker`
 - 📘 Link to run a [NF workflow with ML](https://aws.amazon.com/blogs/hpc/leveraging-seqera-platform-on-aws-batch-for-machine-learning-workflows-part-1-of-2/)

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/images/cutandrun-flow-diagram-v1-0_2.png" width=1000>







  
