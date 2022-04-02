# To run in  Shell, set to your login and project directory, then run:
aws init --profile=default

# List all compute instances in the project
aws ec2 describe-instances

# Grep the serial console output from all instances in the project
# for a specific pattern in the output.
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,Tags[?Key==`Name`].Value,State.Name,PublicDnsName,PublicIpAddress,PrivateDnsName,PrivateIpAddress,LaunchTime]' --output text | grep -i "^i-.*running"