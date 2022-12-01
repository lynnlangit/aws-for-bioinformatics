# Use Amazon Omics

## What is Amazon Omics? 
Amazon Omics is a purpose-built service to help bioinformaticians, researchers, and scientists store, query, and analyze genomic, transcriptomic, and other omics data and then generate insights from that data to improve health and advance scientific discoveries.

### Why do this
Use [`Amazon Omics`](https://aws.amazon.com/omics/) to build quickly for common use cases, such as:
- **Genomics** - Store, query, and analyze genomic data to identify genetic variants and their impact on human health.
- **Transcriptomics** - Store, query, and analyze transcriptomic data to identify gene expression patterns and their impact on human health.
- **Proteomics** - Store, query, and analyze proteomic data to identify protein expression patterns and their impact on human health.

### What is this
- USE Amazon Omics purpose-built genomic file stores to quickly store, query, and analyze genomic, transcriptomic, and proteomic data.  Concepts shown below.

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/3_VMs_%26_Batch-LYNN/images/omics-concepts.png">

### Key considerations
- must set up a reference genome store first
- set up a sample store
- select and use a query engine or workflow engine (WDL, Nextflow)

### How to do this

To use Amazon omics, you can use the awscli or the AWS console. The following steps will use the awscli tool.  
- Blog post: [How to use Amazon Omics](https://aws.amazon.com/blogs/aws/how-to-use-amazon-omics/)
- Announcement: [Amazon Omics](https://aws.amazon.com/about-aws/whats-new/2021/06/amazon-omics/)

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

### Learn More
- [Amazon Omics](https://aws.amazon.com/omics/)
- [Amazon Omics Documentation](https://docs.aws.amazon.com/omics/index.html)
- [Amazon Omics Developer Guide](https://docs.aws.amazon.com/omics/latest/userguide/what-is-omics.html)
- [Amazon Omics API Reference](https://docs.aws.amazon.com/omics/latest/APIReference/Welcome.html)
- [Amazon Omics CLI Reference](https://docs.aws.amazon.com/cli/latest/reference/omics/index.html)
- [Amazon Omics Pricing](https://aws.amazon.com/omics/pricing/)
- [Amazon Omics FAQs](https://aws.amazon.com/omics/faqs/)






