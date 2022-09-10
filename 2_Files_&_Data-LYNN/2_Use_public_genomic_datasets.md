# Use Public Reference Datasets

### What is this
AWS Genomics provides a variety of public datasets that you can access for free and integrate into your research jobs. 

### Why do this
**Use reference data that is already in cloud - no need to upload!**  Save time and money when configuring cloud-based analysis pipelines to use reference data.
 - USE a standard reference file in genomic cloud-based analysis
 - SAVE time by using a reference file that is already available in the cloud (no need to upload)

### Key considerations
 - AWS adds more reference files as they become available
 - Many public healthcare or genomic datasets are listed in the [AWS Registry of Open Data](https://registry.opendata.aws/)
 - AWS also has a registry for data at https://docs.aws.amazon.com/data-exchange/
   - AWS Data Exchange is a service that makes it easy for AWS customers to find, subscribe to, and use third-party data in the AWS Cloud.
 - AWS Marketplace filters allow you to seach for open data (shown below)

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/2_Files_%26_Data-LYNN/images/1000-genomes-mktplc.png" width=600>

### How to do this
- Access via AWS S3 bucket URL (i.e. `s3://<my-genomics-bucket>/<my-folder>/<my-file>`)
  - example `https://s3.console.aws.amazon.com/s3/buckets/1000genomes-dragen` for 1000 Genomes hg38 reference files
  - link to AWS blog post about how this dataset was created (uses DRAGEN toolset) --> [link](https://aws.amazon.com/blogs/industries/dragen-reanalysis-of-the-1000-genomes-dataset-now-available-on-the-registry-of-open-data/)
 - REFERENCE the file in an EC2 VM-based analysis or EKS/ECS container-based analysis

### How to verify you've done it
 - USE the reference file in an EC2 VM-based analysis or EKS/ECS container-based genomic analysis job -or-
 - USE the reference file in an Athena-based genomic query -or-
 - USE the reference file with another AWS data pipeline / query service (i.e. Redshift, etc...)

---

### Learn More - AWS Public Datasets for Genomics by Example
- 📘 Link to [Genomic Datasets on AWS](https://registry.opendata.aws/tag/genomic/) lists genomic public datasets
- An example analysis architecture using the 1000 Genomes dataset - [link](https://registry.opendata.aws/1000-genomes/) or [link](https://aws.amazon.com/1000genomes/) in shown below
    - AWS hosts these datasets and provides public access to the data via S3 buckets.
    - Image below and executable AWS CloudFormation templates are from Repo at [link](https://github.com/aws-samples/data-lake-as-code/tree/roda#readme)

<img src="https://github.com/aws-samples/data-lake-as-code/raw/roda/docs/HowLakeHouseReadyDatasetsWork.png" width=800>



