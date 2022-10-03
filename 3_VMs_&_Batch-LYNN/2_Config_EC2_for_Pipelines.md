# Test Container for Pipelines

### Why do this
 - SCALABILITY - package tools, libraries or APIs that into docker container images to be able to scale your analysis jobs more efficiently than when using VMs (comparsion shown below)
 - REPRODUCIBILITY - capture tool configuration (as an image) for reproducible research
 - PORTABILITY - run your analysis on any cloud provider or on your own hardware

### What is this
 - CONTAINER IMAGE -> 
   - LOCATE (or BUILD) and use reusable docker container images (rather than VMs) for scalaing your analysis jobs on various AWS pipelines (VMs, Kubernetes, Nextflow, Terra, others...)
   - Intro to Containers - [link](https://www.docker.com/resources/what-container)
 - DOCKERFILE -> 
   - USED by docker daemon to build contents into a container image
   - EXAMPLE dockerfile - [link](https://github.com/lynnlangit/HelloDocker/blob/master/Dockerfile)

### Key considerations

IMPORTANT: Building containers is a complex skill set, **prefer to find and reuse existing container images**, rather than building your own container images
 - FIND existing containers by searching for a tool (i.e. 'gatk' etc... on public container registries - see list in next section & example below)
 - SEE Biocontainers for an intro to container technologies - [link](https://biocontainers-edu.readthedocs.io/en/latest/)
 
 
 After you build and test your container, to run an analysis at scale, you must evaluate, select, configure and test your preferred container **orchestration** method. You could orchestrate container workloads with a number of methods -- EC2 VMs, Kubernetes clusters... Alternatively, you may choose to use a higher-level service, such as Nexflow, which handles most of the container scaling configuration for you.

### How to do this
0. LOCATE, REVIEW and TEST an existing DOCKER CONTAINER IMAGE  
   from a public container image registries such as... by searching for the tool name (i.e. bamstats, samtools, etc...)
   - [DockerHub](https://hub.docker.com)
   - [Quay.io](https://quay.io/) 
   - [Biocontainers](https://biocontainers.pro/#/)
   - [Elastic Container Registry](ECR) to store or use AWS for public or private images  

--or--
1. BUILD and TEST your own DOCKER CONTAINER IMAGE
    - Link to [Create a docker image the easy way](https://software.broadinstitute.org/firecloud/documentation/article?id=9453)
 
2. RUN YOUR CONTAINER IMAGE ON AWS
   - Select EC2 or a Kubernetes service (i.e. Fargate, EKS...) as a target environment to run your container image
    - Configure your container image to run on your target environment
   - Connect via SSH to your VM
      - Use `docker image ls` to get the name of your container instance
      - Use `docker run <image id>` to start your container instance
      - Use `docker ps` to get the name of the running container
      - Use the command `docker exec -it <container name> /bin/bash` to get a bash shell in the container
----

### How to verify you've done it

 - Review output data (usually stored in S3 buckets)
 - Review job / analysis log files
 - Review AWS CloudWatch logs for your cluster job executions log files

### Other Things to Know
 - Building a docker container via best practices - [link](https://biocontainers-edu.readthedocs.io/en/latest/best_practices.html)
 - Running containers on container-optimized AWS EC2 VMs - [link](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html)
 - Configuration, tuning and securing VM or K8 clusters is an advanced skill set
 - BUILDING IMAGES YOURSELF - There are several steps in the process, these are shown in the screenshot below

[![tool-to-docker](/images/tool-to-docker.png)]()

NOTES: 
 
 - Container images can be run on AWS in EC2 (VMs) or as part of a cluster of containers.  
   - If a cluster of container instances, then a container orchestration API or service is generally added.  
   - Kubernetes (K8) is the most popular open source container orchestrator.  AWS has EKS (Elastic Kubernetes Service and other options, Fargate, etc...).  Alternatively, there are a number of bioinformatics APIs that can orchestrate containers on AWS.  These include cromwell, dsub and Nextflow.
 - Best practice is include only small, public example data in the Dockerfile (docker image).  Use S3 buckets to store your research data.
 - [Singularity containers](http://singularity.lbl.gov/) are used for specialized compute environments such as HPC (and mostly NOT used on AWS pipelines). 

### How to learn more
 - 📘 Link to [Run a blastn container](https://biocontainers-edu.biocontainers.pro/en/latest/running_example.html)
 - :octocat: Link to DOCKERFILE source code example - [Blastn container files](https://github.com/lynnlangit/blastn)
 - 📺 Link to [Building a Container from scratch](https://www.youtube.com/watch?v=Utf-A4rODH8) ~20 min. screencast video, includes advanced concepts (namespaces, more)
  - 📺 Watch [using Docker containers on AWS](https://www.youtube.com/watch?v=3cQYJnqCkLs) - 20 minute video from the Broad Institute. Terra runs on AWS
