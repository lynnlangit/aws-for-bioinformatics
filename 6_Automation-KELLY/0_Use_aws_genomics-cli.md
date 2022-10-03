# AWS Genomics Cli

Amazon Genomics CLI is an open source tool for genomics and life science customers that simplifies and automates the deployment of cloud infrastructure, providing you with an easy-to-use command line interface to quickly setup and run genomics workflows on Amazon Web Services (AWS) specified by languages like WDL. 

Genomics CLI makes it easy for software developers and researchers to automatically provision, configure, and scale cloud resources to run genomic specific processes at petabyte scale. This tool includes support for spot instances so that customers get the lowest costs possible. Genomics CLI is built on top of AWS CDK, which allows customers to easily extend the tool to support their own custom workflows.

- top level AWS docs --> https://aws.amazon.com/genomics-cli/
- snakemake tutorial --> https://aws.github.io/amazon-genomics-cli/docs/workflow-engines/snakemake/
- best practices for cost control --> https://aws.github.io/amazon-genomics-cli/docs/best-practices/controllingcosts/

---

### Details on Using Genomics CLI

Code examples below using the `awscli` tool: 

#### install aws genomics cli
`pip install aws-genomics-cli`

#### configure aws genomics cli
`aws-genomics-cli configure`

#### use aws genomics cli
`aws-genomics-cli run-pipeline --pipeline-file <pipeline_file> --output-location <output_location>`

#### example pipeline file
`aws-genomics-cli run-pipeline --pipeline-file https://raw.githubusercontent.com/aws-samples/amazon-genomics-cli/main/samples/snakemake/snakemake.yaml --output-location s3://<bucket_name>/`

#### monitor aws genomics cli
`aws-genomics-cli monitor-pipeline --pipeline-id <pipeline_id>`

#### cancel aws genomics cli
`aws-genomics-cli cancel-pipeline --pipeline-id <pipeline_id>`

#### delete aws genomics cli
`aws-genomics-cli delete-pipeline --pipeline-id <pipeline_id>`
