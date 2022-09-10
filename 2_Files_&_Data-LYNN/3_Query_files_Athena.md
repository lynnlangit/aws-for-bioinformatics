# Use Athena to Query Files

### Why do this
 - PERFORM analysis on files using SQL statements
 - PAY by the query (amount of data scanned)
 - AVOID setting up any infrastructure 
    - VMs and controllers --or-- 
    - Docker container image instance clusters
    - The is called SERVERLESS access - pay by the query, no servers or clusters

### What is this
 - QUERY on file data (including genomic file formats, such as VCF files) at scale using [ansi-SQL](https://en.wikipedia.org/wiki/SQL) query commands
 - QUERY on files stored in S3 bucket storage 

### Key considerations
 - Understand how Athena billing works 
    - you are charged by the **amount of data scanned** by your query
 - Billing starts at $5/TB of data scanned
 - Each query will estimate the amount of data scanned 
    - shown below on the bottom right of the WebUI
 - AWS hosts many public genomic reference datasets
   - including `1000 Genomes` and more
   - including these public datasets is fast
      - the data is already in AWS
      - the data is properly secured, via access control 

### How to do this
- WRITE (optionally test) the SQL query
- RUN (or execute) the SQL query

### How to verify you've done it
- VIEW the query results
- VIEW the query execution plan (could optimize files (split or partition)), or could optimize SQL query (re-write to include less data)
- VIZ the query results using dashboard tool (Amazon QuickSight, Tableau, etc...)


### How to learn more
- More in my AWS Data Repo - [link](https://github.com/lynnlangit/Hello-AWS-Data-Services/tree/master/4_data_lake/2_Athena)
- UNDERSTAND that Athena is a type of 'serverless' service, because you do NOT setup VMs or docker container clusters to use this service.  You simply upload your data, write your query and execute the query.  You are charged for query run time and Athena storage.  You are NOT charged for VMs, etc...
 - USE Athena best practices to manage performance - [link](https://aws.amazon.com/blogs/big-data/top-10-performance-tuning-tips-for-amazon-athena/
 - USE Athena includes many genomic or annotation data sets, a list is shown below. 

---


### Learn More - Athena for Genomics by Example

 - Link to example Jupyter notebook (queries VCF data in an AWS Data Lake) - https://github.com/aws-samples/aws-genomics-datalake/blob/main/1000Genomes.ipynb
 - **DEMO** AWS Athena for Genomics -- https://aws.amazon.com/blogs/big-data/interactive-analysis-of-genomic-datasets-using-amazon-athena/
 - AWS Example - query genomic data lake data with Athena - [link](https://aws.amazon.com/blogs/industries/perform-interactive-queries-on-your-genomics-data-using-amazon-athena-or-amazon-redshift/)


  
---
