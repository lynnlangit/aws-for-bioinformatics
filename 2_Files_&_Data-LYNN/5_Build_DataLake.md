# Data Lake & Data Mesh

The bucket-based data lake is evolving toward a Data Lake House and then into a Data Mesh.  This is shown conceptually below.  Look for lots of innovation in this area.  We will update this repo page as AWS adds new services and features into existing data services.  AWS includes the Lake Formation service which is used in combination with other AWS data services to build a Data Lake.  At minimum this generally includes S3 buckets, Athena and AWS Glue.

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/2_Files_%26_Data-LYNN/images/modern-health-data-aws.png" width=800>

---

### Current State: Genomics Example - Genomics Data Lake using AWS Lake Formation

- Reference architecture for genomics workloads (from AWS) by example shown below - from AWS Solutions Guidance - [link](https://aws.amazon.com/solutions/guidance/multi-omics-and-multi-modal-data-integration-and-analysis/)
- How-to 'Build a Genomics Data Lake' using EMR / guidance from AWS - [link](https://aws.amazon.com/blogs/industries/build-a-genomics-data-lake-on-aws-using-amazon-emr-part-1/)
- Code for article above - [link](https://github.com/aws-samples/aws-genomics-datalake)
<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/2_Files_%26_Data-LYNN/images/genomics-lake.png" width=900>

### Current State: Genomics Example - FIHR Servers Data Lake using AWS Health Lake

Amazon [HealthLake](https://docs.aws.amazon.com/healthlake/latest/devguide/how-healthlake-works.html) is a HIPAA-eligible service that enables healthcare providers, health insurance companies, and pharmaceutical companies to store, transform, query, and analyze health data in a consistent fashion in the AWS Cloud at petabyte scale.
- Amazon HealthLake maintains Data Stores of health records in FHIR-compliant format.
- Create (import from S3 files), monitor, and delete a Data Store for your FHIR data
- Query data using Search or Create, Read, Update, and Delete functions
- Transform your data using integrated medical natural language processing (NLP)

Blog post with details - [link](https://aws.amazon.com/blogs/aws/new-amazon-healthlake-to-store-transform-and-analyze-petabytes-of-health-and-life-sciences-data-in-the-cloud/).  Also architecture shown below.

<img src="https://d2908q01vomqb2.cloudfront.net/da4b9237bacccdf19c0760cab7aec4a8359010b0/2020/11/25/overview-2-1024x462.png">

---

### New - Data Mesh on AWS

The term, data mesh, was coined in 2019 - see this blog post for detail --> https://martinfowler.com/articles/data-monolith-to-mesh.html.  The idea is to create business domains around data objects, these can be buckets, data lakes, data warehouse and more.  A data mesh provides a set of services at the domain level (security, governance, etc...)
- Learn more info about using the AWS Lake Formation service and how to build a data mesh on AWS in my other AWS Data Repo - [link](https://github.com/lynnlangit/Hello-AWS-Data-Services/tree/master/4_data_lake/5_Lake_Formation)
