import boto3

# Create AWS S3 Bucket
def createBucket(bucketName):
    s3 = boto3.resource('s3')
    bucket = s3.create_bucket(Bucket=bucketName)
    print("Bucket " + bucketName + " created.")
    return bucket

# List AWS S3 Buckets
def listBuckets():
    s3 = boto3.resource('s3')
    for bucket in s3.buckets.all():
        print(bucket.name)

# Add Object to AWS S3 Bucket
def addObject(bucketName, objectName, objectContent):
    s3 = boto3.resource('s3')
    s3.Bucket(bucketName).put_object(Key=objectName, Body=objectContent)
    print("Object " + objectName + " added to bucket " + bucketName + ".")

# List Objects in AWS S3 Bucket
def listObjects(bucketName):
    s3 = boto3.resource('s3')
    for obj in s3.Bucket(bucketName).objects.all():
        print(obj.key)

# Update Configuration of AWS S3 Bucket
def updateBucketConfig(bucketName, bucketConfig):
    s3 = boto3.resource('s3')
    bucket = s3.Bucket(bucketName)
    bucket.Action('PutBucketAcl', BucketAclConfiguration=bucketConfig)
    print("Bucket " + bucketName + " configuration updated.")