# Using AWS Fargate to run a Docker container

####### Set Up the Container Image and Repository #######

# Create a repository
aws ecr create-repository --repository-name my-repo

# Get the login command from Amazon ECR and execute it directly
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 123456789012.dkr.ecr.us-east-1.amazonaws.com

# Build your Docker image 
docker build -t my-repo .

# Tag your image so you can push the image to this repository
docker tag my-repo:latest 123456789012.dkr.ecr.us-east-1.amazonaws.com/my-repo:latest

# Push this image to your newly created AWS repository
docker push 123456789012.dkr.ecr.us-east-1.amazonaws.com/my-repo:latest

####### Use Fargate to run the container #######

# Create a task definition
aws ecs register-task-definition --cli-input-json file://task-definition.json

# Create a cluster
aws ecs create-cluster --cluster-name my-cluster

# Create a service
aws ecs create-service --cluster my-cluster --service-name my-service --task-definition my-task-definition --desired-count 1 --launch-type FARGATE --network-configuration "awsvpcConfiguration={subnets=[subnet-12345678],securityGroups=[sg-12345678],assignPublicIp=ENABLED}"

# List the services
aws ecs list-services --cluster my-cluster

# List the tasks
aws ecs list-tasks --cluster my-cluster

# Describe the tasks
aws ecs describe-tasks --cluster my-cluster --tasks task-arn

# Stop the service
aws ecs stop-task --cluster my-cluster --task task-arn

###### Clean Up #######

# Delete the service
aws ecs delete-service --cluster my-cluster --service my-service

# Delete the cluster
aws ecs delete-cluster --cluster my-cluster

# Delete the task definition
aws ecs deregister-task-definition --task-definition my-task-definition

# Delete the repository
aws ecr delete-repository --repository-name my-repository --force

# Delete the repository policy
aws ecr delete-repository-policy --repository-name my-repository

