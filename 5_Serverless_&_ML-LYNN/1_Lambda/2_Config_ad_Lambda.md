# Advanced AWS Lambda

****CONTINUE HERE****

### Why do this
 - RUN stateless, short-term compute tasks
 - RUN your analysis job tasks individually, or chained into a workflow (or pipeline)
 - PAY only **when a Lambda is called (or invoked)**, rather than for a long-running VM or container

### What is this
 - Use functions where you supply your own containers, rather than AWS-supplied containers or VMs for compute
 - Use advanced configuration of Lambda instances (memory, timeout, etc...)

### Key considerations
 - In Cloud Run, you supply the code and container file (Dockerfile), AWS builds, registers and runs your container image. Your Lambda can be called via HTTP requests
 - State is NOT automatically saved after the Lambdais invoked.  If you need to persist information, then you must write the logic to save the output to files (bucket) or a database and then to retrieve that information in a later part of the workflow

### How to do this
 - WRITE and test your Lambda code
 - BUILD a docker image w/that code by running 'docker build....' on a DOCKERFILE
 - REGISTER your docker container image in the Elastic Container Registry
 - ASSOCIATE your image to Lambda by running 'aws lambda create-function' 
 - TEST (invoke) and monitor your service

### How to verify you've done it
 - INVOKE the Lambda manually or via a test script
 - REVIEW the CloudWatch logs to see the result of the Lambdainvocation

### Other Things to Know
 - Serverless patterns are often used for workloads that have spikes in demand
 - Using the 'revision settings' you can set a min/max number of instances for autoscaling for your deployment.  You can also set the 'maximum requests per container'
 - Serverless auto-scales (to your AWS account limits) by default
 - Cloud Run has two execution modes - within CloudRun and CloudRun for Anthos using Kubernetes (GKE)
 - Cloud Build (for serverless continuous deployment) is integratable into CloudRun functions.  Use it for CD in building updated Docker images 

### How to learn more
 - 📘 Link to [choosing a serverless option](https://cloud.google.com/serverless-options/)
 - 📺: Example from CSIRO "This is My Architecture" w/Dr. Denis Bauer - [link](https://youtu.be/7i17szaOBg0)  
 - 📘  Cloud-native serverless (more from CSIRO) - [link](https://bioinformatics.csiro.au/blog/converting-traditional-architecture-to-cloud-native-applications/)



