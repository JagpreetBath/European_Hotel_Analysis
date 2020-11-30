# Natural Language Processing (NLP)  - 2/2 
## NLP using Deep Learning (2 Layer Neural Network) 

## Resources
* Google Colab
* Model - tf2-preview/gnews-swivel-20dim
    * Model URL - https://tfhub.dev/google/tf2-preview/gnews-swivel-20dim/1

## Objective of this analysis

**This is NLP 2/2 - The first in the series was [PySpark NLP](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_PySpark)**

**In the earlier analysis [PySpark NLP](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_PySpark), we had used PySpark (Model = NaiveBayes) to do NLP, below were the results**
- For output as decimals (0.0 to 10.0): 20.77 %
- For output as integers (0 to 10): 39.62%
- For output as 5-star ratings (1 to 5): 61.27%
- For output as 3 Categories (Bad, Average, or Good): 77.63%
- For output as Sentiment (Positive or Negative): 91.56%

**In this analysis we will use DeepLearning (using 2 layers) to see if we can improve the accuracy at predicing the review output**

![Deep Learning Model, using 2 layers](images/NLP_DL_layers.png)

## 1: Using the input as `reviews` and output as `decimal score` (0.0 - 10.0)
![Deep Learning Model, review as decimal](images/NLP_DL_Decimals.png)

## 2: Using the input as `reviews` and output as `integers` (0 - 10)
![Deep Learning Model, review as integers](images/NLP_DL_Integers.png)

## 3: Using the input as `reviews` and output as 5 stars (1 - 5)
![Deep Learning Model, review as 5-stars](images/NLP_DL_5_Stars.png)

## 4: Using the input as `reviews` and output as `3 Categories` (Good, Average, Bad)
![Deep Learning Model, review as 3 Categories](images/NLP_DL_3Categories.png)

## 5: Using the input as `reviews` and output as `Sentiments` (Positive/Negative)
![Deep Learning Model, review as Positive or Negative](images/NLP_DL_pos_neg.png)

# Summary of Results
- For output as decimals (0.0 to 10.0): 0.0 %
- For output as integers (0 to 10): 0.0 %
- For output as 5-star ratings (1 to 5): 0.43 %
- For output as 3 Categories (Bad, Average, or Good): 3.10%
- For output as Sentiment (Positive or Negative): 95.66 %

# Recommendations
We found that this model is overfitted for review output as positive/negative. So if the company wants to predict reviewer sentiments, this is a very good model. It is, however, a big failure for predicting reviews in any other of the 4 formats - the [PySpark NLP](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_PySpark) fares much better.

# Testing the model in real-time 
1) Open Gooogle colab https://colab.research.google.com/
2) Sign in with Google credentials
3) [Upload this file on Google Colab](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_DeepLearning/Realtime_testing_of_DL_NLP_model.ipynb)
4) [Place this file at the root of the Colab file above](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_DeepLearning/SavedModel5_NLP_DL_Review_Pos_Neg_Format.h5)
5) Run the File: Runtime -> Run All
6) Enter as many reviews as you want to test
7) See the results!

    ***Sample result***
    
    ![Sample Result](images/sample_output_real-time_test.png)


