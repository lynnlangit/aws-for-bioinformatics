# To run in  Shell, set to your login and project directory, then run:
aws init --profile=default

# Create a RDS instance
aws rds create-db-instance --db-instance-identifier {your-db-instance-identifier} --db-instance-class db.t2.micro --engine MySQL --master-username {your-username} --master-user-password {your-password} --allocated-storage 5 --db-name {your-db-name} --no-multi-az --no-publicly-accessible --vpc-security-group-ids {your-security-group-id} --db-subnet-group-name {your-subnet-group-name}

# Assign the instance an IPv4 address
aws rds modify-db-instance --db-instance-identifier {your-db-instance-identifier} --vpc-security-group-ids {your-security-group-id} --apply-immediately

# Set the root user password for the instance.  Replace the [PASSWORD]
# placeholder with the actual password you want to use.
aws rds modify-db-instance-password --db-instance-identifier {your-db-instance-identifier} --master-user-password [PASSWORD]

# Connect to the instance.
aws rds connect-to-db --db-instance-identifier {your-db-instance-identifier} --db-user-name {your-username} --db-password [PASSWORD]

# List all RDS instances in the project
aws rds describe-db-instances

