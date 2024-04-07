# AWS CLI examples for IAM

## Create a new user
aws iam create user --user-name kelly
aws iam create user --user-name kelly --tags Key=Name,Value=Kelly
aws iam create user --user-name kelly --tags Key=Name,Value=Kelly Key=Department,Value=IT

## Create a new group
aws iam create group --group-name IT

## Add user to group
aws iam add-user-to-group --user-name kelly --group-name IT

## Create a new policy
aws iam create-policy --policy-name IT --policy-document file://IT-policy.json

## Attach policy to group
aws iam attach-group-policy --group-name IT --policy-arn arn:aws:iam::aws:policy/IT

## Create a new access key
aws iam create-access-key --user-name kelly

## Delete an access key
aws iam delete-access-key --user-name kelly --access-key-id AKIAIOSFODNN7EXAMPLE

## Delete a user
aws iam delete-user --user-name kelly

## Delete a group
aws iam delete-group --group-name IT

## Delete a policy
aws iam delete-policy --policy-arn arn:aws:iam::aws:policy/IT
