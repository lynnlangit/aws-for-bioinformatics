# Register container images with ECR

### Why do this
 - USE docker container images on AWS without having to pull them from a public registry
 - You want your images to be scanned for security vulnerabilities
 - RUN Container images on VMs, Kubernetes Clusters, Cloud Run or other AWS services

### What is this
 - Registering docker container images on AWS for use (execution) by AWS services, such as VMs or Kubernetes clusters
 - Elastic Container Registry can host images that are public or private (to a set of authorized AWS IAM users)
 - Container Registry supports Docker Image Manifest V2 and OCI image formats
 - Use the Docker credential helper command-line tool to configure Docker to authenticate directly with Container Registry

### Key considerations
 - The AWS Elastic Container Registry is an alternative to other container registries, such as DockerHub or Quay.io

### How to do this
 - Use the the cloud console to register a docker container image on the AWS Elastic Container Registry 
 - Do the quickstart for [Registering container images with ECR](https://aws.amazon.com/getting-started/hands-on/register-container-images-ecr/)
### How to verify you've done it
 - View the ECR console to see that image is listed as expected 
 - Read the CloudWatch logs to see that the image was scanned for vulnerabilities

### Other Things to Know
 - Integrates with CI/CD pipeline tools, such as AWSBuild and others/

### How to learn more
 - 📘 Link to [Push DockerHub image to ECR](https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-push-ecr-image.html)