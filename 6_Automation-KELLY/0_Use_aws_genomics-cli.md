# AWS Genomics Cli

add info here...

- top level AWS docs --> https://aws.amazon.com/genomics-cli/
- snakemake tutorial --> https://aws.github.io/amazon-genomics-cli/docs/workflow-engines/snakemake/


# install aws genomics cli
pip install aws-genomics-cli

# configure aws genomics cli
aws-genomics-cli configure

# use aws genomics cli
aws-genomics-cli run-pipeline --pipeline-file <pipeline_file> --output-location <output_location>

# monitor aws genomics cli
aws-genomics-cli monitor-pipeline --pipeline-id <pipeline_id>

# delete aws genomics cli
aws-genomics-cli delete-pipeline --pipeline-id <pipeline_id>
