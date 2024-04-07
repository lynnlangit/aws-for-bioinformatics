# Use AWS Batch to run a job
# complete directions at https://docs.aws.amazon.com/batch/latest/userguide/batch_job_submission.html

########## Set up the environment ##########

# To run in  Shell, set to your login and project directory, then run:
aws init --profile=default

# Create a bucket
aws s3 mb s3://{your-bucketname}

# Upload some data to the bucket you created
aws s3 sync . s3://{your-bucketname}

# List the files in your bucket
aws s3 ls s3://{your-bucketname}

# List all the files in your bucket, including the size of each file
aws s3 ls s3://{your-bucketname} --recursive --human-readable --summarize

########## AWS Batch Job Definition ##########

# Create a job definition
aws batch create-job-definition --job-definition-name {your-job-definition-name} --type "container" --container-properties "{\"image\":\"{your-image-name}\",\"vcpus\":{your-vcpus},\"memory\":{your-memory},\"command\":\"{your-command}\"}"

# Create a job queue
aws batch create-job-queue --job-queue-name {your-job-queue-name} --state "ENABLED" --priority {your-priority} --compute-environments "{\"computeEnvironmentOrder\":[{\"order\":1,\"computeEnvironment\":\"{your-compute-environment-name}\"}]}"

# Submit a job
aws batch submit-job --job-name {your-job-name} --job-queue {your-job-queue-name} --job-definition {your-job-definition-name} --array-properties "{\"size\":{your-array-size}}"

# List your jobs
aws batch list-jobs --job-queue {your-job-queue-name}

# Describe your job
aws batch describe-jobs --jobs {your-job-id}

# Check the status of your job
aws batch describe-jobs --jobs {your-job-id} --query "jobs[0].status"

# Terminate your job
aws batch terminate-job --job-id {your-job-id} --reason "Terminating job"


