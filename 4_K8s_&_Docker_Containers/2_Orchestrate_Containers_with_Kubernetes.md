# Orchestrate Containers with Kubernetes

### Why do this
 - SCALE your analysis pipeline using containers with Kubernetes (K8) container clusters
 - USE pre-built docker container images to run your bioinformatics scripts or tools at scale
 - USE custom built docker container images for your bioinformatics scripts or tools

### What is this
 - Use K8 as a container orchestration, coordination and scaling service
 - Use K8 to effectively scale up pipelines for large scale analysis jobs

### Key considerations
 - Kubernetes is very powerful, but also very complex. It is typical to have a dedicated TEAM of K8 DevOps professionals to setup, manage and maintain pipelines.
 - K8 provides for very granular control over cluster scaling, however it requires deep understanding of K8 configurations and best practices to run effectively
 - K8 is open source and runs on most public clouds or locally, making it very flexible

### How to do this
 - USE AWS EKS to run K8 clusters
 - ADD to your workload by creating service instance based on your docker container images
 - CONFIGURE and tune your cluster resources (CPU, memory, etc...) to suit the size of your analysis
 - VIEW your job in the K8 Web UI - example shown below - [link](https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/)


 -----


### How to verify you've done it
 - Run your analysis, monitor for correct results
 - Monitor for service cost, execution time and adjust to meet your requirements
 


### How to learn more
 - 📘 Link to [Best Practices for operating containers on AWS](https://aws.amazon.com/blogs/containers/best-practices-for-operating-containers-on-aws/)
