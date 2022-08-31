# Use Public Reference Datasets

<img src="https://github.com/aws-samples/data-lake-as-code/raw/roda/docs/HowLakeHouseReadyDatasetsWork.png" width=800>

### What is this
- AWS Genomics provides a variety of public datasets that you can access for free and integrate into your research jobs
    - An example is the 1000 Genomes dataset - [link](https://registry.opendata.aws/1000-genomes/)
    - AWS hosts these datasets and provides public access to the data via S3 buckets.
    - Image above from Repo at [link](https://github.com/aws-samples/data-lake-as-code/tree/roda#readme)

### Why do this
 - USE a reference file in genomic cloud-based analysis
 - SAVE time by using a reference file that is already available in the cloud (no need to upload)

### Key considerations
 - AWS adds more reference files as they become available
 - Many public healthcare or genomic datasets are listed in the [AWS Registry of Open Data](https://registry.opendata.aws/)

### How to do this
- Access via AWS S3 bucket URL

### How to verify you've done it
 - REFERENCE the file in an EC2 VM-based analysis

### Other Things to Know
 - 📘 Learn about VCF file structure - [link](https://software.broadinstitute.org/gatk/documentation/article?id=11005)
  - :octocat: Learning how to work with VCF (Variant Call Format) files - [link](https://github.com/davetang/learning_vcf_file)
 - 📘 Poster about using VCF Files - [link](http://vcftools.sourceforge.net/VCF-poster.pdf)

### How to learn more
 - 📘 Link to [AWS Public Datasets](https://registry.opendata.aws/) lists currently available datasets


