# Natural Language Processing (NLP) using Deel Learning (2 Layer Neural Network) 

## Resources
* Google Colab
* Model - tf2-preview/gnews-swivel-20dim
    * Model URL - https://tfhub.dev/google/tf2-preview/gnews-swivel-20dim/1

## Objective of this analysis

**In the past, we had used PySpark (Model = NaiveBayes) to do NLP, below were the results**
- For output as decimals: 20.77 %
- For output as integers: 39.62%
- For output as 3 Categories: 77.63%
- For output as Positive or Negative: 91.56%

**In this analysis we will use DeepLearning (using 2 layers) to see if we can improve the accuracy**

![Deep Learning Model, using 2 layers](images/NLP_DL_layers.png)

## Using the input as `reviews` and output as `decimal score` (0.0 - 10.0)
![Deep Learning Model, review as decimal](images/NLP_DL_Decimals.png)

## Using the input as `reviews` and output as `integers` (0 - 10)
![Deep Learning Model, review as integers](images/NLP_DL_integers.png)

## Using the input as `reviews` and output as `3 Categories` (Good, Average, Bad)
![Deep Learning Model, review as 3 Categories](images/NLP_DL_3categories.png)

## Using the input as `reviews` and output as `Sentiments` (Positive/Negative)
![Deep Learning Model, review as Positive or Negative](images/NLP_DL_pos_neg.png)

# Summary
We found that this model is overfitted for output as positive/negative as the results below show
- For output as decimals: 0.0 %
- For output as integers: 0.0 %
- For output as 3 Categories: 3.10%
- For output as Positive or Negative: 95.66 %

## We also saved the model so that it can be imported and tested by a user
[***Google Colab file to test the model***](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_DeepLearning/Testing_the_model_with_user_input.ipynb)

[***Saved Model's .h5 file that needs to be placed at the same level as the Colab file above***](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_DeepLearning/Step4_NLP_DL_Review_Pos_Neg_Format.ipynb)
