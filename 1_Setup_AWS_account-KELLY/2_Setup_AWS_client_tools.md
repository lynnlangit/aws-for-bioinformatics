# Use AWS client tools


### Why do this
  - Work efficiently using the best combination of AWS client tools when using AWS cloud services

### What is this
  - Understand, select and configure AWS client tools. There are broadly two types of client tools.  

    - One type runs in web browser, so there is nothing to install locally. The second type requires downloading, installing and configuring client tools.     
    - If you chose to download a client tool, then be sure to follow the installation instructions for your particular type of laptop OS.  

 Available AWS client tools include the following:   

1. **AWS Web UI (or console)** - [link to console](https://aws.amazon.com/) example screen shown below
    - Usage Tips:
        - ZERO INSTALL
        - Use Google chrome browser to access the AWS console
        - Use the search box within the AWS console to quickly jump within the console 
 <img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/6e8b362667e3236a68c4190c043c051da443a0d0/1_Setup_AWS_account-KELLY/images/aws-console.png" width=900>

---

2. **AWS CloudShell** (integrated AWS client from withing the AWS console) - [link to CloudShell](https://aws.amazon.com/cloudshell/)  
AWS CloudShell provides the following:
    - ZERO INSTALL, runs in AWS Web UI
    - Uses a temporary EC2 virtual machine instance
    - Allows for command-line access to the instance from a web browser
    - Includes a number of features:
        - a built-in code editor BETA
        - 1 GB of persistent disk storage per region
        - pre-installed AWS SDK and other tools
        - language support for Java, Go, Python, Node.js, PHP, Ruby and .NET
        - web preview functionality
        - built-in authorization for access to AWS Console projects and resources
        - built-in support for AWS Lambda functions
<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/9fef4bd32ae28ed238ad8d63523ed41a06c7a677/1_Setup_AWS_account-KELLY/images/aws-cli.png" width=900>

3. **AWS CLI** (Command Line Interface) - [link to cli](https://aws.amazon.com/cli/) Installed locally on your laptop

    - As an alternative to using the AWS integrated CloudShell, you could use a locally-installed AWS client.  To do this you  download and configure the AWS SDK(https://aws.amazon.com/sdk/). Then you can use `awscli` commands from your local laptop to start, control or stop AWS service instances.  For example, to start an EC2 instance, you could use the following command:

```awscli ec2 run-instances --image-id ami-0b9c9f62 --count 1 --instance-type t2.micro --key-name mykey --security-groups mygroup --subnet-id subnet-0b9c9f62 --associate-public-ip-address```

4. **AWS Genomics CLI** - [link to CLI](https://aws.amazon.com/genomics-cli/) installed locally on your laptop
    - more info on AWS Genomics CLI repo [here](https://aws.github.io/amazon-genomics-cli/)
    - more info on AWS Genomics CLI installation instructions [here](https://aws.github.io/amazon-genomics-cli/docs/getting-started/installation/)
    - more info on AWS Genomics CLI usage [here](https://aws.github.io/amazon-genomics-cli/docs/)
    - more info on AWS Genomics CLI installed software [here](https://aws.github.io/amazon-genomics-cli/docs/getting-started/installation/) and also in this Medium article [here](https://medium.com/@awsgenomics/aws-genomics-cli-install-and-use-on-your-laptop-f8f8f8f8f8f8) and also this [one](https://medium.com/aws-tip/aws-genomics-cli-for-bioinformatics-workflow-deconstructed-4f0856a85ef8)
<img src="https://d1.awsstatic.com/product-page-diagram_Amazon-Genomics-CLI_HIW-V3.f69da41258c06a8611b1e5afeae440f63519534d.png" width=900>

5.  **AWS Sagemaker** - [link to site](https://aws.amazon.com/sagemaker/)
It is a cloud-based machine learning platform that enables you to create and deploy machine learning models.  
    - Sagemaker features ZERO INSTALL, Jupyter-style notebooks 
        - Notebooks can be run for FREE on AWS Cloud Infrastructure 
        - resources (CPUs, Memory, etc...) are constrained by AWS 
    - Sagemaker includes many samples for connecting to key AWS services such as these:
        - S3 storage, Athena, Machine Learning w/TensorFlow and other services)  
        - you can add GPUs (specialized processors) to your Jupyter notebook computation  
    - NOTE: It is also possible to connect to AWS service with standard [Jupyter notebooks](https://jupyter.org/).    
    - These notebooks can be run remotely (on AWS) or downloaded and run on your local machine w/Jupyter installed

---

### Key considerations
 - Use the **AWS console** when you are LEARNING about AWS Services
 - Use the **integrated console (shell)** and scripts to EXPERIMENT with small analysis jobs
 - Use **scripts and source control** to create reproducible analysis jobs
 - Use **AWS SDK language integration** (Python, Java... AWS SDK) to scale your analysis for large/huge jobs. Example of using the Python client libary - [link](https://aws.amazon.com/blogs/machine-learning/aws-sagemaker-and-aws-sdk-for-python/)

### How to do this
 - CLICK in AWS console and/or use shell - no setup /install required
 - DOWNLOAD AWS SDK - use AWS cli and/or sdk for your language, requires installation and configuration


### How to verify you've done it
 - LOGIN  to AWS console
 - VERIFY your account
 - VERIFY that you can perform a 'hello world' task in your account.  Common examples are below:
    - View your AWS account name & ID using the console --OR-- 
    - Upload a file into a S3 Storage bucket --OR--
    - Start a EC2 Virtual Machine Linux instance and connect to it using the ssh tool

### Other Things to Know
 - Access to the some or all of the AWS console can (and sometime should) be restricted by user permission level
 - Reproducible research includes **scripting** AWS service configurations
 - AWS has a large number of sample scripts & SDK code samples in their GitHub organizational Repos - [link](https://github.com/aws)
 - IAM (Identity and Access Management) - IAM services include security objects, such as users, groups, roles and permissions

### How to learn more
 - 📘 Link to [Integrated Shell features](https://github.com/awslabs/aws-shell)
 - 📺 Link to [Automating AWS with the AWS CLI](https://www.youtube.com/watch?v=TnfqJYPjD9I)
 - 📘 Link to [Scripting AWS examples](https://aws.amazone.com/samples/scripting/)
 - 📘 Link to [awscli tips](https://medium.com/aws-summit/aws-cli-tips-and-tricks-for-developers-and-sysadmins-d0d9b9f8f9f5)
 - 📺 Link to [How do I use the BASH command line?](https://www.youtube.com/watch?v=EMaFdfIlK58)
