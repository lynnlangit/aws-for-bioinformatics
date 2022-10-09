# AWS cli examples for S3

## Create a new bucket
aws s3 mb s3://lynn-bucket

## List buckets
aws s3 ls

## Upload a file
aws s3 cp example.txt s3://lynn-bucket

## List files in a bucket
aws s3 ls s3://lynn-bucket

## Download a file
aws s3 cp s3://lynn-bucket/example.txt .

## Delete a file
aws s3 rm s3://lynn-bucket/example.txt

## Delete a bucket
aws s3 rb s3://lynn-bucket