# Use a AWS EC2 ML image for a VM 

### Why do this
 - CREATE and run your own machine learning model(s) at scale
 - WORK with GPUs and/or TPUs for TensorFlow without having to install drivers

### What is this
 - Ability to quickly spin up a Virtual Machine on AWS with machine learning libraries pre-installed
 - As above, with drivers for GPUs are pre-installed

### Key considerations
 - What type of machine learning is included in your analysis?
 - Which ML libraries do you need - there are 3 different AWS Deep Learning OS images available
 - Which configuration (size/capacity) do you need?

### How to do this
 - Create a AWS EC2 VM instance using the AWS Machine Learning image
 - Choices include the following:
    - Deep Learning Image: Base m27 with CUDA 10.0
    - Deep Learning Image: PyTorch 1.1.0 and fastai m27
    - Deep Learning Image: TensorFlow 1.13.1 m27
 - Configure the VM instance with best fit parameter values, i.e. number of CPUs, amount of memory, add GPUs etc...
 - Start the instance

### How to verify you've done it
 - Login to the AWS EC2 VM ML instance via SSH
 - Run your ML analysis jobs, verify the results via the logs / output destinations

### Other Things to Know
 - GPUs are often added for TensorFlow ML analysis jobs, such as DeepVariant
 - You can also view the VM images on the AWS SageMaker Hub 

