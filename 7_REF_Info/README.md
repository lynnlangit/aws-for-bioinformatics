# Genomic-scale Pipeline Architecture Patterns

Shown below is an example reference architecture for a Data Lake pattern **using AWS services**.  Typical application flow is indicated on diagram via numbers and detailed in the section below.
  
<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/7_REF_Info/images/aws-genomics-arch.png" width=800>


## Six key patterns 
Used in creating reproducible and scalable genomic-scale cloud analysis pipelines include the following:

1. **Functional programming** for side-effect free parallel processing (rather than OOP). Genomic tasks should be independent of each other and not depend on any other genomic tasks (or splitable tasks).

2. **Use of open source bioinformatics tools**, such as GATK, samtools, blast etc... (rather than scripts) to process the data using tasks grouped into a workflow or pipeline.

3. **Use of Docker** to contain Bioinformatics tools (scripts or jar files) included in one or more docker images for compute (rather than VMs) which expose tool parameters for configuration in the pipeline.

4. **Data stored as files in buckets**, this is a Data Lake pattern, storing data as objects (or files). The **Data Lake** pattern is used rather than storing data in relational or NoSQL databases. 

5. **Use of domain-specific pipeline configuration languages**, such as Nextflow, WDL or CWL (rather than cloud vendor scripts or templates, such as AWS CloudFormation, or AWS Deployments). These domain-specific configuration languages enable configuration of both bioinformatics tools and also cloud services (VM size, bucket security...) 

6. **Use of ephemeral VM instances** such as AWS EC2 spot VM instances, to scale out compute clusters.  These instances are only available when not in use by other customers, so no guarantee of availability.  However, when available, spot instances allow for 'bursting' at an incredibly low cost (usually 90% off on-demand price).

----

