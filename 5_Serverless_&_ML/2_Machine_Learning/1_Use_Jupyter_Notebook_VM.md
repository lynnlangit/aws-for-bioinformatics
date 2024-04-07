
# Use Jupyter Notebook Instances

### Why do this
 - Use [Jupyter notebooks](https://jupyter.org/) with data analysis script and libraries for interactive reseach
 - Use libraries (such as TensorFlow) and hardware (such as GPUs) which are pre-installed and pre-configured on a EC2 VM hosted in your AWS project

### What is this
 - Set up and use analysis using libraries and Jupyter notebooks on pre-configured EC2 VMs quickly
 - View an example Jupyter Notebook which uses GATK for an analysis - [link](https://github.com/lynnlangit/AWS-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples/GATK_IGV_Tutorial.ipynb)

### Key considerations
 - SELECT the core library (i.e. R, Python, etc...) for your notebook instance
 - CONFIGURE the hardware for your VM based on your expected workload - can include GPUs
 - SELECT the mode of working with your notebook.  Notebooks can be...
    - VIEW-only - this can include the results of running each code cell or not (used when publishing results of analysis). This requires a rendering environment, GitHub can render most notebooks (view only), also [NBViewer](https://nbviewer.jupyter.org/) and others.
    - RUNNABLE - this mode requires an execution environment, in AWS this is a VM (EC2) with the Jupyter libraries AND any language runtime libraries (i.e. R, Python...).  NOTE: For quick prototyping, you can use [Google Colabs](https://colab.research.google.com/) to execute Jupyter noteboks without setting up EC2 VMs.  However, the free version of Colabs includes significant CPU/RAM etc. caps.

### How to do this
 - CREATE notebook instance from SageMaker -> Notebooks
 - SELECT appropriate type of Notebook - see screenshot below
 - CREATE a notebook instance VM and wait for a green indicator 
 - ACCESS notebook via Jupyter interface

 -----

### How to verify you've done it
 - CLICK the **'OPENJUPYTERLAB'** link on the AWS SageMaker hub -> Notebooks interface for your VM
 - WORK with notebooks on your VM 


### Other Things to Know
 - Notebook instances have libaries (such as R, Python...)  pre-installed
 - Notebook instances are part of the AWS SageMaker Hub 
 - Notebook instances are an alternative to you using EC2 VMs where YOU would have to manually install ALL ML libraries and drivers 
 - Google Colabs are public Jupyter servers where you can try our small experiments FREE using Jupyter notebooks - [link](https://colab.research.google.com/notebooks/welcome.ipynb)



