# Use EC2 Virtual Machines for Analysis 

### Why do this
 - Your analysis job is too big or complex to run on your laptop
 - You don't want to wait for time on your organization's shared Hadoop/Spark or HPC compute cluster

### What is this
 - The ability to perform analysis (compute) on files & data at dynamic scale 
 - Running EC2 Virtual Machines (VMs) instances from within your AWS account.

### Key considerations
 - **Manual Configuration** - VMs require you to perform extensive configuration steps manually
    - Configuration is required for **each VM** & also for the group (cluster) of machines
    - Alternatively, if you use bioinformatics tools and libraries (such as [Nextflow](https://github.com/lynnlangit/AWS-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/9a_Use_Nextflow_for_Pipelines.md) or [dsub](https://github.com/lynnlangit/AWS-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/9b_Use_dsub_for_Pipelines.md)...), then those libraries will do most of the VM configuration & scaling for you **automatically**  
 - Size your VMs to meet your time/budget goals.  Considerations include the following (screenshot below):  
      - **CPUs** -- type and number of CPU cores.  You may also add specialty cores (often for machine learning jobs) - these can include GPUs or fpga procssors.
      - **RAM** (memory)
      - **Base OS disk** - Amazon Linux is the default
      - **Other storage** - can be in an S3 Bucket, Persisent Disk or combination - [link to article](https://github.com/lynnlangit/Hello-AWS-Data-Services/tree/master/1_storage/2_EFS-EBS-FSx). If your applications do not require the lower latency of persistent disks and local SSDs, you can store your data in much cheaper S3 buckets.

Tip: Connect your instance to a S3 bucket when latency and throughput are not a priority and when you must share data easily between multiple VMs or zones.
- Select the best-fit VM type.  There are two key types:
    - **Standard VM** (default) - size the VM appropriately, use for one-time, small-sized jobs
    - **[Spot VM](https://aws.amazon.com/ec2/spot/)** is an VM that you can create and run at a much lower price than normal instances (can be up to 90% LESS than regular instances). 
    
      Important: AWS can terminate (preempt) these VMs if they requires access to those EC2 instances for other tasks. Spot VMs are excess EC2 capacity so their availability varies with usage. Select this VM type to save money.  The configuration switch to enable a VM to be a spot instance is shown below.
 - Understand service costs. VMs are billed by size (CPU/RAM), time (per second) and other factors (region).  Reduce VM cost by using spot VMs.  

### How to do this
 - CREATE your VM using the AWS console, or a script or a template
    - from a AWS cloud formation template (YAML or JSON configuration file)
      - 3rd party template 
      - your own template 
    - by clicking on the console to configure (dev/test only)
 - CONFIGURE the VM 
    - for your analysis workload size
    - by setting the number of cores and amount of memory, etc...
 - MONITOR VM resource usage
    - (CPU, RAM...)
    - read/use logs (including the AWS Stackriver log reader)
 - STOP the VM when your analysis is complete
    - you can stop VM and/or
    - you can delete the stopped VM instance
    - you can create an image (AMI) or snapshot from a stopped VM

### How to verify you've done it
 - Using the AWS console, connect the to VM, for example use the integrated ssh-client to connect to Linux-based instances.  You can do this from the AWS console (SSH button) 
 - Using integrated SSH, security keys will be automatically transferred to a new window. This windows will open and give you terminal access to your instance - screenshot below
 - Verify your environment by typing a linux command into the window (i.e. `pwd`)

### Other Things to Know
 - Use the integrated VM monitoring console to verify that you've sized your VM properly (screenshot below) - it shows CPU, Network & other common metric usage statistics.
 - Use AWS Billing tools (& budgets)
 - Understand EC2 service limits by account type (number of CPUs in FREE account is 24, in a CORP account can be much more - ex. 2400)
 - Follow EC2 security best practices - see link to video at end of this page
 - Use AWS provided-images with OS (Linux distributions, Windows OS....) and services (SQL Server....) pre-installed
 - Reuse VMs by using EC2 disks, images and snapshots - [link](https://cloud.google.com/compute/docs/instances/)
 - Add GPU/fpga processors for machine learning workloads - [link](https://cloud.google.com/compute/docs/gpus/add-gpus)

### How to learn more
 - 📘 Link to [EC2 Pricing](https://cloud.google.com/compute/pricing#machinetype)
 - 📘 Link to [AWS Configuration](https://cloud.google.com/deployment-manager/docs/configuration/create-basic-configuration) YAML file example
 - 📘 Link to [Joint genotyping 10K whole genome sequences using Sentieon on AWS](https://blog.dnastack.com/joint-genotyping-10k-whole-genome-sequences-using-sentieon-on-google-cloud-strategies-for-7ac77645d96d) Strategies for analyzing large sample sets
 - 📘 Link to [Using AWS Recommendation Hub Dashboard](https://cloud.google.com/recommender/docs/recommendation-hub/getting-started) to get recommendations for EC2 (VM) sizes and also IAM permissions
 - 📺 Link to video [EC2 security best practices](https://www.youtube.com/watch?v=qDyjE1fIqkk)
 - 📘 Link to [Best practices for EC2 OS updates at scale](https://cloud.google.com/blog/products/management-tools/best-practices-for-os-patch-management-on-compute-engine)
