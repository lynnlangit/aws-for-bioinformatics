# Use Amazon Omics

## What is Amazon Omics? 
Amazon Omics is a purpose-built service to help bioinformaticians, researchers, and scientists store, query, and analyze genomic, transcriptomic, and other omics data and then generate insights from that data to improve health and advance scientific discoveries. Concepts shown below are from the [Amazon Omics website](https://aws.amazon.com/omics/).

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/images/omics-concepts.png">

### Why do this
Use [`Amazon Omics`](https://aws.amazon.com/omics/) to build quickly for common multiomics use cases, such as:
- **Genomics** - Store, query, and analyze genomic data to identify **genetic variants** and their impact on human health.
- **Transcriptomics** - Store, query, and analyze transcriptomic data to identify **gene expression patterns** and their impact on human health.
- **Proteomics** - Store, query, and analyze proteomic data to identify **protein expression patterns** and their impact on human health.

### What is this
- USE Amazon Omics purpose-built genomic file stores to quickly store, query, and analyze genomic, transcriptomic, and proteomic data.  Examples and implementation details are provided below.

### Key considerations
- requires a reference genome store - (FASTA) and a reference genome index (BWA index)
- then set up a sequnce store - (FASTQ, BAM, or CRAM)
- can set up a variant and/or annotation store - (VCF, GFF, or GTF)
- select and use a query engine or workflow engine - (WDL, Nextflow)
- TIP: use Omics Workflows `RunGroups` to control the amount of resources per set of workflows
    - set the max number of concurrent vCPUs used by tasks 
    - set the maximum duration of tasks
    - set the max concurrent number of runs
- NOTE: to use the annotation store, you must have a variant store
    - to query your data in Amazon Athena - example at [link](https://github.com/aws-samples/amazon-omics-tutorials/blob/main/notebooks/200-omics_analytics.ipynb)
        - create resource links to your database using the AWS LakeFormation Console
        - verify that the IAM user running the query is a Data Lake Administrator

----

### How to do this

To use Amazon omics, you can use the awscli or the AWS console. The steps below show hot to use the awscli tool. Additionally, below are two linked worked examples that you can use to evaluate the service. 
- Blog Announcement & Example: [How to use Amazon Omics](https://aws.amazon.com/blogs/aws/introducing-amazon-omics-a-purpose-built-service-to-store-query-and-analyze-genomic-and-biological-data-at-scale/)
- AWS Omics Workshop Example: [Tutorial](https://catalog.us-east-1.prod.workshops.aws/workshops/af31b35a-c7ba-4037-acd7-e70e9135b2f8/en-US)


#### Create a reference genome store

```
aws omics create-reference-genome-store --name my-reference-genome-store --description "My reference genome store" --region us-east-1
```

#### Create a sample store

```
aws omics create-sample-store --name my-sample-store --description "My sample store" --region us-east-1
```

#### Create a query engine

```
aws omics create-query-engine --name my-query-engine --description "My query engine" --region us-east-1
```
#### Create a workflow engine

```
aws omics create-workflow-engine --name my-workflow-engine --description "My workflow engine" --region us-east-1
```

#### Upload a reference genome

```
aws omics upload-reference-genome --reference-genome-store-id my-reference-genome-store --name my-reference-genome --description "My reference genome" --region us-east-1 --file file://my-reference-genome.fa
```

#### Upload a sample

```
aws omics upload-sample --sample-store-id my-sample-store --name my-sample --description "My sample" --region us-east-1 --file file://my-sample.bam
```

#### Run a query

```
aws omics run-query --query-engine-id my-query-engine --name my-query --description "My query" --region us-east-1 --query "SELECT * FROM my-sample-store"
```

#### Run a workflow

```
aws omics run-workflow --workflow-engine-id my-workflow-engine --name my-workflow --description "My workflow" --region us-east-1 --workflow file://my-workflow.wdl
```
### Architecture Pattern

From AWS Architecture guidance - [link](https://docs.aws.amazon.com/solutions/latest/guidance-for-multi-omics-and-multi-modal-data-integration-and-analysis-on-aws/architecture-overview.html) and diagram below.

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/images/omics-arch.png">

### Learn More
- [Amazon Omics](https://aws.amazon.com/omics/)
- [Amazon Omics Documentation](https://docs.aws.amazon.com/omics/index.html)
- [Amazon Omics CLI Reference](https://docs.aws.amazon.com/cli/latest/reference/omics/index.html)
- [Amazon Omics Pricing](https://aws.amazon.com/omics/pricing/)
- [Amazon Omics FAQs](https://aws.amazon.com/omics/faqs/)






