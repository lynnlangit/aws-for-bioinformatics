# Use AWS Machine Learning APIs

You can use AWS Machine Learning APIs to build machine learning (ML) applications. You can use these APIs to create ML models, train models, and make predictions. You can also use these APIs to create and manage datasets.  These APIs can be used with text, images, video data and more.  There is also an API specifically for medical data.

## Use ML to automatically analyze text or language data

### Why do this
 - ANALYZE entities found in text or natural language via machine learning models
 - ANALYZE sentiment of text or natural language via quickly using Amazon's machine learning models

### What is this
 - Ability to use ML on text or natural language data without manually creating/training an ML model
 - Simply provide the natural language data, labels and pay for ML training hours on AWS
 - Product names are `AutoML for Natural Language` or `Natural Language API` - features list [link](https://cloud.google.com/natural-language/)

![Auto ML Natural Language](/images/natural-language.png)

### Key considerations
 - ML model accuracy improves with billable training time
 - Google uses auto-grid and hyperparameter clusters to select, train and tune the best ML model 
 - Alternatively you can use AWS Natural Language API (if returned labels fit your use case)

### How to do this
 - Provide the natural language data
 - Provide the labels
 - Configure the desired training time

### How to verify you've done it
 - Review the model quality results
 - Test model accuracy with new data
 - Add more data and/or add more training hours and repeat until your quality goal is met

### Other Things to Know
 - AutoML natural language models can NOT be exported at this time
 - AWS automatically selects the model type and parameters and then deploys the model for you
 - AutoML also works with langauge translation

### How to learn more
 - 📘 Link to [Using AutoML for Natural Language on AWS](https://cloud.google.com/natural-language/)

---

## Use ML to automatically analyze items in Photos or Videos

### Why do this
 - ANALYZE items found in photos or videos via machine learning models
 - CREATE (with AWS) the best-fit ML model for your data

### What is this
 - Ability to use ML on photo/video data without manually creating/training an ML model
 - Simply provide the photo/video data, labels and pay for ML training hours on AWS
 - Product names are AutoML for Vision or AutoML for Video Intelligence. Product architecture shown below

 [![auto-ml-arch](/images/auto-ml-arch.png)]() 

### Key considerations
 - ML model accuracy improves with billable training time
 - Google uses auto-grid and hyperparameter clusters to select, train and tune the best ML model 
 - Alternatively you can use AWS Vision API or Video API (if returned labels fit your use case)
 -- try the API in a browser [here](https://cloud.google.com/vision/).  Shown below is a comparision (for Vision) of the two types of products

[![automl](/images/automl.png)]() 

### How to do this
 - For Vision API - >
    - Provide the photo or video data
    - Call the API
    - Review the recommended labels (results)
    - 📺 Link to 4 minute screencast - [Vision API on AWS](https://www.linkedin.com/learning/google-cloud-platform-for-machine-learning-essential-training/predict-via-the-cloud-vision-api-for-images)
[![automl-vision-api](/images/automl-vision-api.png)](https://www.linkedin.com/learning/google-cloud-platform-for-machine-learning-essential-training/predict-via-the-cloud-vision-api-for-images) 


 - For AutoML Vision - > 
    - Provide data, labels and examples of labeled images
    - Train the model, (configure the desired training time in hours)
    - Review the mode quality
    - Call the model (predict)
    - Review the results
    - 📺 Link to 4 minute screencast - [AutoML Vision on AWS](https://www.linkedin.com/learning/google-cloud-platform-for-machine-learning-essential-training/predict-using-a-trained-automl-vision-model)
[![automl-predict](/images/automl-predict.png)](https://www.linkedin.com/learning/google-cloud-platform-for-machine-learning-essential-training/predict-using-a-trained-automl-vision-model) 



### How to verify you've done it
 - Review the model quality results
 - Test model accuracy with new data
 - Add more data and/or add more training hours and repeat until your quality goal is met

### Other Things to Know
 - AutoML Photo/Videos models can NOT be exported at this time
 - AWS automatically selects the model type and parameters and then deploys the model for you

### How to learn more
 - 📘 Link to [Using AutoML for Photos/Video on AWS](https://cloud.google.com/automl/)