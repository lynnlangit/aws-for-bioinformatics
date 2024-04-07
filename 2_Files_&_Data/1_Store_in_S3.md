# Use AWS S3 File Storage

### Why do this

**You are out of storage space!** Get scalable file storage.  
 - When your workload and data files are too big to run on your laptop
 - When you don't want to wait for time on your organization's shared cluster

### What is this

 AWS S3 Storage is an online file storage web service for storing, accessing and transferring data files on AWS. 
 
  - AWS Storage (or S3) is frequently used as the input and output location for files when you run analysis (workflows or pipelines).
  - Files are stored in buckets. Bucket usually contain folders for orgnaziation as well. 
  - Each bucket must have a globally unique name.  

### Key considerations

**Configure buckets appropriately to reduce costs!**  Storage can be the most significant AWS service cost for bioinformatics (due to the number and size of files involved in analysis) so be careful to select the storage class that fits your analysis best i.e. multi-regional, regional.... so as not to pay for unused resource s. Shown below are the [storage class options](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html).

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/2_Files_%26_Data-LYNN/images/s3-storage.png" width=600>

### How to do this
 - CREATE a bucket with a globally unique name
 - CONFIGURE the bucket storage class type 
 - CONFIGURE the bucket location 
 - CONFIGURE the bucket access control, versioning, encryption & retention
 - List of examples of key [bucket operations](https://www.thegeekstuff.com/2019/04/aws-s3-cli-examples/)
 -----

### How to verify you've done it
 - UPLOAD your file(s) to the bucket using the web console or the `awscli` scripting tool - [link](https://docs.aws.amazon.com/cli/latest/userguide/cli-services-s3-commands.html) 
 - VIEW the file in the bucket (WebUI) | use `awscli s3 ls` to list the contents of your bucket in a terminal window

----

### Other Things to Know
 - Design file archiving processes, i.e. move to appropriate storage tier based on file access patterns, if not accessing or over time (i.e. monthly...)
 - Delete files generated during processing (often called intermediate files) that are no longer needed when jobs complete
 - Read about 'requestor pays' S3 feature - [link](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html)
 - Understand S3 Glacier Instant Retrieval feature - [link](https://aws.amazon.com/s3/storage-classes/glacier/instant-retrieval/)
 - Use S3 `Storage Lens` feature for insights into storage usage -[link](https://aws.amazon.com/s3/storage-analytics-insights) 
   - hands-on getting started tutorial - [link](https://aws.amazon.com/getting-started/hands-on/amazon-s3-storage-lens/) NOTE: you must assign permissions to a non-root IAM user to access this service

### Learn More - S3 for Genomics by Example
 - 📘 See examples of common genomic file types (i.e. FASTQ, BAM, VCF... ) - [link](https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/7_REF_Info/2_FILE-TYPES.md)
 - 📘 Move HPC data into S3 using AWS Data Sync (example) - [link](https://aws.amazon.com/blogs/storage/how-to-move-and-store-your-genomics-sequencing-data-with-aws-datasync/)
 - 📚 Compare AWS storage products in genomic use cases - [link](https://github.com/lynnlangit/Hello-AWS-Data-Services/tree/master/1_storage/2_EFS-EBS-FSx)

