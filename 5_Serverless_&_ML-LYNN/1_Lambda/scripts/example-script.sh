# Lambda example script
aws lambda invoke --function-name example-function --payload file://payload.json output.json

# Output:
aws lambda invoke --function-name example-function --payload file://payload.json output.json
{
  "statusCode": 200,
  "body": "Hello from Lambda!"
}

# Payload:
{
  "name": "John Doe"
}

