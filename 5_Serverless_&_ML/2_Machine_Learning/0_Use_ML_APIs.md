# Use AWS Machine Learning APIs

You can use AWS Machine Learning APIs to build machine learning (ML) applications. You can use these APIs to create ML models, train models, and make predictions. You can also use these APIs to create and manage datasets.  These APIs can be used with text, images, video data and more.  There is also an API specifically for medical data.

## Use ML APIs to automatically analyze text or language data

### Why do this
 - ANALYZE entities found in text or natural language via machine learning models
 - ANALYZE sentiment of text or natural language via quickly using Amazon's machine learning models

### What is this
 - Ability to use ML on text or natural language data without manually creating/training an ML model
 - Product names are `Amazon Textrack` and `Comprehend Medical` - features list [link](https://aws.amazon.com/comprehend/)

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/5_Serverless_%26_ML/2_Machine_Learning/images/comprehend.png" width=800>

### Key considerations
 - Select the best-fit service for your use-case

### How to do this
 - Provide the natural language data
 - Call the API

### How to verify you've done it
 - Review the model results
 - Test model accuracy with new data

---

## Use ML API to automatically analyze items in Photos 

### Why do this
 - ANALYZE items found in photos via machine learning models
 - USE the AWS the best-fit ML API for your input data

### What is this
 - Ability to use ML on photo data without manually creating/training an ML model
 - Product names is Rekognition for Vision. 

### How to do this
 - For Vision API - >
    - Provide the photo or video data
    - Call the API
    - Review the recommended labels (results)
  
### How to verify you've done it
 - Review the model quality results
 - Test model accuracy with new data
 - Add more data and repeat until your quality goal is met
