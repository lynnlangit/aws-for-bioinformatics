# Setup AWS Project Security

### Why do this
 - Learn how to secure your AWS project resources (Virtual machine instances, S3 storage buckets,...)
 - Learn how to secure your analysis data via assigned access permissions and/or data encryption
 
### What is this
 - AWS provides uses IAM (Identity and Access Management) objects to allow you to configure security
 - AWS IAM objects includes members, roles, permissions, keys and other security objects
 - AWS allows you to enable the use of selected cloud services in your account in one of three ways:
    - using enabled **services** (such as 'create VM using EC2 service' by clicking on AWS 
    console or using `awscli create...`)
    - using enabled **APIs** (such as 'create VM instance' using AWS Cloud SDK) --or--
    - using enabled services which include API access

### Key considerations
 - Only enable services/APIs that you are using in your AWS Project
 - Consider auditing service usage by using CloudTrain logs - [link](https://aws.amazon.com/cloudtrain/logs/)

### How to do this
 - Associate AWS IAM User accounts to AWS Roles 
 - Best Practice: Use AWS-created roles.  Service-level roles include individual service permissions
 - You can create custom IAM (or security) roles if needed

### How to verify you've done it
 - Test permissions assigned to roles/users
 - TIP: You can use the AWS IAM & Admin -> `Policy Troubleshooter` tool to verify that an account has been assigned the appropriate permissions.  This tools shows the (policy) bindings assigned to one or more (service account) resources.
    - TIP: You can use the AWS IAM & Admin -> `Access Keys` tool to verify that an account has been assigned the appropriate permissions.  This tools shows the (policy) bindings assigned to one or more (service account) resources.

### Other Things to Know
 - Data is encrypted by default in S3 Storage using an AWS-provided encryption key.  It is possible for you to supply your own encryption key when your requirements necessitate this.
 - You should use AWS service object tags to help you to identify services instances that have different security requirements.  They are implemented as key:value tag pairs, i.e. `"lab":"langit-lab"` etc...

### How to learn More
 - 📘 IAM Best practices - [link](https://aws.amazon.com/iam/best-practices/)
 - 📘 AWS IAM Roles Explained covers when to use which type of role -[link](https://medium.com/@awscloud/aws-iam-roles-explained-c9c8f8f8f9e0)
 - 📘 HIPPA compliant AWS services - [link](https://aws.amazon.com/compliance/hippa/)
 - 📘 AWS Security Whitepapers - [link](https://aws.amazon.com/security-whitepapers/)
 - 📘 AWS Security Best Practices - [link](https://aws.amazon.com/security/best-practices/)
