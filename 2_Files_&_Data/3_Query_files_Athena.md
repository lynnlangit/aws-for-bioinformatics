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

### Example: Querying TCGA Data with Athena

To query TCGA data using Athena, follow these steps:

1. **Setting up Athena for TCGA Data Querying**
   - Navigate to the Athena service in the AWS Management Console.
   - Ensure that your S3 bucket containing TCGA data is ready and accessible.
   - Create a new database dedicated to TCGA data by executing the following SQL command:
     ```sql
     CREATE DATABASE tcga_data;
     ```

2. **Creating a Database and Table for TCGA Data**
   - Within the `tcga_data` database, create a new table that corresponds to the structure of your TCGA data files. For example:
     ```sql
     CREATE EXTERNAL TABLE IF NOT EXISTS tcga_data.sample_table (
       patient_id string,
       gene_expression float,
       mutation_count int
     )
     ROW FORMAT DELIMITED
     FIELDS TERMINATED BY ','
     STORED AS TEXTFILE
     LOCATION 's3://your-bucket-name/path-to-tcga-data/';
     ```

3. **Example SQL Query to Retrieve TCGA Data**
   - Execute an SQL query to retrieve specific data from the TCGA dataset. For instance, to find the average mutation count by patient:
     ```sql
     SELECT patient_id, AVG(mutation_count) as avg_mutation
     FROM tcga_data.sample_table
     GROUP BY patient_id;
     ```

4. **Interpreting the Query Results**
   - Review the query results in the Athena query editor. The results will display the `patient_id` along with the corresponding `avg_mutation` calculated from the TCGA data.
   - Use these insights for further analysis or integrate them into your bioinformatics research.

By following these steps, you can effectively query TCGA data using Athena, leveraging the power of SQL to extract meaningful insights from large-scale genomic datasets.

---

### Learn More - Athena for Genomics by Example

 - Link to example Jupyter notebook (queries VCF data in an AWS Data Lake) - https://github.com/aws-samples/aws-genomics-datalake/blob/main/1000Genomes.ipynb
 - **DEMO** AWS Athena for Genomics -- https://aws.amazon.com/blogs/big-data/interactive-analysis-of-genomic-datasets-using-amazon-athena/
 - AWS Example - query genomic data lake data with Athena - [link](https://aws.amazon.com/blogs/industries/perform-interactive-queries-on-your-genomics-data-using-amazon-athena-or-amazon-redshift/)
