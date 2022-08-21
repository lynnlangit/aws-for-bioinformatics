## Genomic-scale Pipeline Reference Architecture

Six key patterns used in creating reproducible genomic-scale cloud analysis pipelines include the following:

1. **Functional programming** for side-effect free parallel processing (rather than OOP)

2. **Use of tools**, such as GATK, Hail, VariantSpark, etc... (rather than scripts) to process the data

3. **Use of Docker** to contain Bioinformatics tools (scripts or jar files) included in one or more docker images for compute (rather than VMs) which expose tool parameters for configuration

4. **Data stored as files in buckets**, this is a Data Lake pattern, storing data as objects (or files). The **Data Lake** pattern is used rather than storing data in relational or NoSQL databases. Some systems, such as Terra.bio include the ability to define a schema 'over' files stored in buckets via a custom data model and is shown below.

5. **Use of domain-specific pipeline configuration languages**, such as WDL, Nextflow, CWL (rather than cloud vendor scripts or templates, such as AWS CloudFormation, or AWS Deployments). These configuration languages enable configuration of both bioinformatics tools and also cloud services (VM size, bucket security...) 
6. **Use of emphemeral VM instances** such as AWS EC2 spot VM instances, to scale out compute clusters.  These instances are only available when not in use by other customers, so no guarantee of availability.  However, when available, spot instances allow for 'bursting' at an incredibly low cost (usually 90% off on-demand price).

----
Shown below is an example reference architecture for a Data Lake pattern **using AWS services**.  Typical application flow is indicated on diagram via numbers.
  

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/images/aws-images/aws-genomics-arch.png" width=800>

---
