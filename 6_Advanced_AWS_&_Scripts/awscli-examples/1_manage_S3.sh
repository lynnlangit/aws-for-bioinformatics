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