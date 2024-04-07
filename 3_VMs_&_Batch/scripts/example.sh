# AWS CLI examples for EC2

# Create a new key pair
aws ec2 create-key-pair --key-name lynn-key-pair --query 'KeyMaterial' --output text > lynn-key-pair.pem

# Create a new security group
aws ec2 create-security-group --group-name lynn-sg --description "Security group for Lynn's VMs"

# Add a rule to the security group
aws ec2 authorize-security-group-ingress --group-name lynn-sg --protocol tcp --port 22 --cidr

# Create a new instance
aws ec2 run-instances --image-id ami-0c2b8ca1dad447f8a --count 1 --instance-type t2.micro --key-name lynn-key-pair --security-groups lynn-sg

# List instances
aws ec2 describe-instances

# Start an instance
aws ec2 start-instances --instance-ids i-0a2b8ca1dad447f8a

# Stop an instance
aws ec2 stop-instances --instance-ids i-0a2b8ca1dad447f8a

# Terminate an instance
aws ec2 terminate-instances --instance-ids i-0a2b8ca1dad447f8a

# Delete a key pair
aws ec2 delete-key-pair --key-name lynn-key-pair

# Delete a security group
aws ec2 delete-security-group --group-name lynn-sg







