# Use AWS Batch


### Why do this
Scale out your pipeline analysis using [`AWS Batch`](https://aws.amazon.com/batch/) to manage compute resources

### What is this
- USE AWS S3 + AWS Batch + custom code + Athena to create **serverless** end-to-end scalable genomic analysis jobs
- USE **AWS Batch** to orchestrate scalable genomic analysis running EC2 **without** manually configuring scaling of your compute cluster. The API is designed to be a backend for bioinformatics tools (ex. dsub) or systems (cromwell), by providing job scheduling for Docker-based tasks that perform secondary genomic analysis by running container images on one or more EC2 Virtual Machines. Typical secondary analysis jobs include filtering raw reads, aligning and assembling sequence reads, and QA and variant calling on aligned reads.
- USE **Athena** to analyze variants using the SQL query language.

### Key considerations

### How to do this


 -----


### How to verify you've done it
 - Run your analysis, monitor for correct results (view files in your output bucket)
 - Monitor for service cost, execution time and adjust to meet your requirements


### Other Things to Know
There are a number of bioinformatics libraries (cromwell, Nextflow....) that are can use AWS Batch as an `execution backend provider`


