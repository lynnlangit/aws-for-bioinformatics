# Setup your AWS Platform (AWS) Account

### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for compute time on your organization's shared, on-premise compute cluster
 - You want to use AWS Platform services to run large (or huge) genomic analysis jobs

### What is this
 - The ability to perform analysis (or compute) on files (and other types of data) at dynamic scale 
 - Preparation for running analysis on public cloud services hosted by AWS

### Key considerations
 - Use the best fit AWS Account type:  
    - **Use AWS Free Tier** - get $ 300 USD in AWS credits for new users. Use AWS with minimal-sized service limits set by Google (i.e max number of CPUs for VMs...) - [link to free tier](https://cloud.google.com/free) 

    --OR--  

    - **Use Your Organization's AWS Account** - service limits set by your company & Google
 - Understand your project scope:
    - the size & complexity of your analysis  
    - your project budget / timeline  
 - Determine the best location (AWS data center):
    - AWS cloud has regional data centers which are further divded into zones within the physical data center location
    - global [AWS data center locations](https://cloud.google.com/about/locations/) shown below

   [![AWS Locations](/images/regions.png)]()

 NOTE: There are many bioinformatics analysis workflow tools, libraries & solutions which can be run on top of core AWS services.  Examples include [Terra.bio (was Firecloud)](https://terra.bio/), [cromwell](https://cromwell.readthedocs.io/en/stable/), [Nextflow.io](https://www.nextflow.io/) & many others. 

---

### How to do this
 - **REQUEST** an account
   - a) USE a AWS account from your organization --OR--
   - b) SETUP a AWS new (FREE Tier) account
 - **CREATE** a AWS PROJECT 
   - USE **each** AWS Project as a container for **each** of your research projects
   - CREATE separate AWS projects, as a best practice (this allows you to more easily manage security & service costs by grant)
 - **ADD** AWS service instances to your AWS Project 
    - ADD services by data center location and AWS project name, for example...
    - ADD a Virtual Machine instance & a Cloud Storage bucket which are located...
      - in the Google datacenter in `us-east` --AND--
      - in your AWS Project named `my-research-project`

### 📺 Click below to see Lynn's 'Setup AWS account video' 6 min video
[![Setup AWS Account - AWS Platform for Bioinformatics](http://img.youtube.com/vi/oD8lD8v-Z14/0.jpg)](http://www.youtube.com/watch?v=oD8lD8v-Z14 "Setup AWS Account - AWS Platform for Bioinformatics")

### How to verify you've done it
 - LOGIN to [AWS console](http://console.cloud.google.com) or Web UI
 - VIEW your account login (upper right of console)
 - VIEW your project name, shown as 'AWS-for-bioinformatics' below

 <img src="https://github.com/lynnlangit/AWS-for-bioinformatics/raw/master/images/AWS-account.png" width="460" align="right">  


### Other Things to Know
  - AWS FREE tier account have built-in service usage limits - [link](https://cloud.google.com/free/docs/AWS-free-tier)
 - AWS service costs are billed to **YOU** for FREE Tier (after you've spent your $300 credit)
 - AWS service costs are billed to **YOUR COMPANY**  (or research group) for Organizational Accounts
 - SET UP a **AWS Budget** to get notified when AWS services exceed a service cost limit you set (this is useful for testing accounts) - [link](https://cloud.google.com/billing/docs/how-to/budgets)
 - REVIEW AWS Billing Accounts & Resources Hierarchy (shown below)
    - A billing account can be linked to one or more AWS projects and the billing account specifies how you pay (credit card, invoice...) for AWS services
   - A billing account is linked to a payment profile (individual or corporate)

 [![billing](/images/billing.png)]()

---
### AWS Enterprise Account Setup Guidance

Enterprises will generally set up a AWS Organizational Hierarchy, to enforce policy over the business units and/or projects.  This policy can include AWS service usage limits which impacts security and billing.

 - 📘 Link to [Enterprise Onboarding Checklist](https://cloud.google.com/docs/enterprise/onboarding-checklist)
 - 📘 Link to [best practices for Enterprise Organizations](https://cloud.google.com/docs/enterprise/best-practices-for-enterprise-organizations)
 - 📘 Link to general best practices via [Cloud Architecture Framework](https://cloud.google.com/architecture/framework)

 [![AWS Resource Hierarchy](/images/resources.png)]()

---

<img src="https://github.com/lynnlangit/AWS-for-bioinformatics/raw/master/images/recommendations.png" width="460" align="right"> 

### How to learn more

#### AWS Billing

Read about funding opportunities to cover cloud costs - https://terra.bio/funding-opportunities-to-cover-cloud-costs/.  

- 📘 Link to [how to set up a budget alert](https://cloud.google.com/billing/docs/how-to/budgets)
- 📘 Link to [best practices for optimizing cloud costs](https://cloud.google.com/blog/products/AWS/best-practices-for-optimizing-your-cloud-costs)
- 📘 Link to [AWS Billing concepts](https://cloud.google.com/billing/docs/concepts)
- 📘 Link to [AWS Service Pricing Calculator](https://cloud.google.com/products/calculator/)
- 📘 Link to [Article on AWS Billing Accounts](https://medium.com/google-cloud/managing-billing-permissions-in-google-cloud-31906aa626a0)
- 📘 Link to [Using AWS Virtual Machine Sizing Recomendations](https://cloud.google.com/compute/docs/instances/apply-sizing-recommendations-for-instances) to save money on AWS service costs.  See screen to the right
- 📘 Link to [Article of example of setting up billing actions](https://cloud.google.com/billing/docs/how-to/notify). See screen below for reference example

---

![billing-actions](https://github.com/lynnlangit/AWS-for-bioinformatics/blob/master/images/billing-actions.png)

#### AWS Billing on Terra.bio
 - 📘 Link to [How much did a {Terra} workflow analysis cost?](https://support.terra.bio/hc/en-us/articles/360037862771#h_01F9BVT3WM7SNZEXD2CSB7B7WN)
 - 📘 Link to [Setting up Billing on Terra](https://support.terra.bio/hc/en-us/articles/360026182251-How-to-set-up-billing-in-Terra)
 - 📘 Link to [How to link a AWS Billing Account to a Terra Project](https://support.terra.bio/hc/en-us/articles/360026182251)
 - 📘 Link to [Tips for controlling costs](https://support.terra.bio/hc/en-us/articles/360029748111-Understanding-and-controlling-cloud-costs-) article written by team at The Broad
 - 📘 Link to [Understanding costs by analysis type](https://support.terra.bio/hc/en-us/articles/360029772212) - using Terra for AWS for work at The Broad
 - 📺 Watch [understanding Terra (AWS service) costs](https://www.youtube.com/watch?v=SRVrzXHkZKU) - 27 minute video from the Broad
