# Serverless Compute with Lambda

### Why do this
 - RUN stateless, short-term compute tasks
 - RUN Your analysis job tasks can be run individually, or chained into a workflow (or pipeline)
 - PAY only  **when a lambda is called (or invoked)**, rather than for a long-running VM or container

### What is this
 - Use AWS Lambda (rather you managing containers or VMs) for compute
 - AWS Lambda is a lightweight, event-based, asynchronous compute solution that allows you to create small, single-purpose Lambda that respond to cloud events without the need to manage a server or a runtime environment

### Key considerations
 - In Lambda, you supply the code, AWS runs your code on AWS's containers/VMs, but you don't see or manage any infrastructure
 - Configure the memory allocated for your Lambda (128MB - 2GB)
 - Lambda code can be written in Go, Node or Python
 - Lambda can be invoked by calls a number of AWS Services (S3, SQS, SNS, many others...)
 - State is NOT automatically saved after the function is invoked.  If you need to persist information, then you must write the logic to save the output to files (bucket) or a database and then to retrieve that information in a later part of the workflow

### How to do this
 - WRITE your lambda code in the console or locally, then zip the files and upload to Lambda
 - CONFIGURE Lambda instance parmeters (amount of memory...) and create a Lambda instance
 - TEST (invoke) and monitor your service

### How to verify you've done it
 - INVOKE the lambda manually or via a test script 
 - REVIEW the CloudWatch logs to see the result of the function invocation 
 - REVIEW the X-Ray log viewer (must be configured) to see aggregate log metrics

### Other Things to Know
 - Serverless patterns are often used for workloads that have spikes in demand
 - Using 'Advanced Options' you can set an upper limit for 'maximum function instances' in scenarios with spikes in demand
 - Serverless autoscales (to your AWS account limits) by default

### How to learn more
 - 📘 Link to [choosing a serverless option](https://aws.amazon.com/serverless/faqs/)
 
