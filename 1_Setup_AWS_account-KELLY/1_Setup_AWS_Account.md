# Setup your AWS Platform (AWS) Account

### Why do this
 - Your workload is too big to run on your laptop.
 - You don't want to wait for compute time on your organization's shared, on-premise compute cluster.
 - You want to use AWS Platform services to run large (or huge) genomic analysis jobs.

### What is this
 - The ability to perform analysis (or compute) on files (and other types of data) at dynamic scale 
 - Preparation for running analysis on public cloud services hosted by AWS

### Key considerations
 - Use the best fit AWS Account type:  
    - **Use AWS Free Tier** - get $ 300 USD in AWS credits for new users. Use AWS with minimal-sized service limits set by Google (i.e max number of CPUs for VMs...) - [link to free tier](https://aws.amazon.com/free/). 

    --OR--  

    - **Use Your Organization's AWS Account** - service limits set by your company & Google
 - Understand your project scope:
    - the size & complexity of your analysis  
    - your project budget / timeline  
 - Determine the best location (AWS data center):
    - AWS cloud has regional data centers which are further divded into zones within the physical data center location
    - global [AWS data center locations](https://Amazon.com/about-aws/global-infrastructure/regions-and-availability/)


 NOTE: There are many bioinformatics analysis workflow tools, libraries & solutions which can be run on top of core AWS services.  Examples include [cromwell](https://cromwell.readthedocs.io/en/stable/), [Nextflow.io](https://www.nextflow.io/) & many others. 

---

### How to do this
 - **REQUEST** an account
   - a) USE a AWS account from your organization --OR--
   - b) SETUP a AWS new (FREE Tier) account
 - **CREATE** a AWS TAGS for your account 
   - USE AWS Tag sets as identifiers for **each** of your research projects
   - REQUIRE use of AWS Tag sets to identify your projects
 - **ADD** AWS service instances to your AWS account 
    - ADD services by data center location and AWS project name, for example...
    - ADD a Virtual Machine (EC2) instance & a S3 bucket which are located...
      - in the AWS datacenter in `us-east` --AND--
      - by your AWS tag named `key:value`

### How to verify you've done it
 - LOGIN to [AWS console](http://aws.cloud.com) or Web UI
 - VIEW your account login (upper right of console)
 - VIEW your instance & S3 bucket names and tags
 
### Other Things to Know
 - Secure your AWS ROOT user account - [link](https://docs.aws.amazon.com/accounts/latest/reference/best-practices-root-user.html)
 - AWS FREE tier account have built-in service usage limits - [link](https://aws.amazon.com/free/).
 - AWS service costs are billed to **YOU** for FREE Tier (after you've used the service beyond your free tier limits)
 - AWS service costs are billed to **YOUR COMPANY**  (or research group) for Organizational Accounts
 - SET UP an **AWS Budget alert** to get notified when AWS services exceed a service cost limit you set (this is useful for testing accounts) - [link](https://aws.amazon.com/billing/pricing/pricing-terms/)
 - REVIEW AWS Billing Accounts & Resources Hierarchy (shown below)
    - A billing account can be linked to one or more AWS projects and the billing account specifies how you pay (credit card, invoice...) for AWS services
   - A billing account is linked to a payment profile (individual or corporate)

---
### AWS Enterprise Account Setup Guidance

Enterprises will generally set up a AWS Organizational Hierarchy, to enforce policy over the business units and/or projects.  This policy can include AWS service usage limits which impacts security and billing.

 - 📘 Link to [Enterprise Onboarding Checklist](https://aws.amazon.com/enterprise/onboarding/checklist/)
 - 📘 Link to [best practices for Enterprise Organizations](https://aws.amazon.com/enterprise/onboarding/best-practices/)
 - 📘 Link to general best practices via [Cloud Architecture Framework](http://aws.amazon.com/cloud-architecture-framework/)
 - 📘 Link to 'well-architected' best practices via [Well-Architected Framework](https://aws.amazon.com/well-architected/)

---

### How to learn more

#### AWS Billing and Cost Control


- 📘 Link to [how to set up a budget alert](https://aws.amazon.com/billing/pricing/pricing-terms/)
- 📘 Link to [best practices for optimizing cloud costs](https://aws.amazon.com/billing/pricing/pricing-terms/)
- 📘 Link to [AWS Billing concepts](https://aws.amazon.com/billing/pricing/pricing-terms/)
- 📘 Link to [AWS Service Pricing Calculator](https://aws.amazon.com/billing/pricing/pricing-terms/)
- :octocat: Link to Repo from LinkedIn Learning course [AWS Cost Control](https://github.com/lynnlangit/aws-cost-control)


---

