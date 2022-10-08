# Use a AWS EC2 ML Deep Learning Container

### Why do this
 - CREATE and run your own machine learning model(s) at scale
 - WORK with GPUs and/or TPUs for TensorFlow without having to install drivers
 - USE machine learning containers

### What is this
 - Ability to quickly spin up a container on AWS with machine learning libraries pre-installed
 - As above, with drivers for GPUs and/or TPUs pre-installed

### Key considerations
 - What type of machine learning is included in your analysis?
 - Which ML libraries do you need - there are a number of different AWS Deep Learning OS images available
 - Which configuration (size/capacity) do you need?  There is a large list of possible container configurations 

### How to do this
 - Pull the container - either locally or onto a AWS service
 - If locally, start the container
 - If on AWS, select your preferred container orchestration service

### How to verify you've done it
 - Access the container directly --or-- 
 - Access the ML libary via the associated Jupyter notebook, i.e. 'http://localhost:8080'

### Other Things to Know
 - GPUs/TPUs are often added for TensorFlow ML analysis jobs, such as DeepVariant
 - You use these containers as base images, then add your libraries and host on the AWS AI Hub or any other public container registry

### How to learn more
 - 📘 Link to [Use the 'What-if' Tool to help you understand custom Tensor Flow models](https://cloud.google.com/blog/products/ai-machine-learning/introducing-the-what-if-tool-for-cloud-ai-platform-models)
