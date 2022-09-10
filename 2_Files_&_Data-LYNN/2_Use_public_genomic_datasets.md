# Use Public Reference Datasets

### What is this
AWS Genomics provides a variety of public datasets that you can access for free and integrate into your research jobs. 


### Why do this
**Use reference data that is already in cloud - no need to upload!**
 - USE a reference file in genomic cloud-based analysis
 - SAVE time by using a reference file that is already available in the cloud (no need to upload)

### Key considerations
 - AWS adds more reference files as they become available
 - Many public healthcare or genomic datasets are listed in the [AWS Registry of Open Data](https://registry.opendata.aws/)

### How to do this
- Access via AWS S3 bucket URL (i.e. `s3://<my-genomics-bucket>/<my-folder>/<my-file>`)
- Use any genomic analysis tool or pipeline to include this set of files as a reference

### How to verify you've done it
 - REFERENCE the file in an EC2 VM-based analysis

### Other Things to Know


### Learn More - AWS Public Datasets for Genomics by Example
- 📘 Link to [Genomic Datasets on AWS](https://registry.opendata.aws/tag/genomic/) lists genomic public datasets
- An example is the 1000 Genomes dataset - [link](https://registry.opendata.aws/1000-genomes/) or [link](https://aws.amazon.com/1000genomes/)
    - AWS hosts these datasets and provides public access to the data via S3 buckets.
    - Image below from Repo at [link](https://github.com/aws-samples/data-lake-as-code/tree/roda#readme)

<img src="https://github.com/aws-samples/data-lake-as-code/raw/roda/docs/HowLakeHouseReadyDatasetsWork.png" width=800>



