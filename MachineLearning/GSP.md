# Machine Learning

## Overview of Machine Learning
Machine learning (ML) is the study of computer algorithms that improve automatically through experience. It is seen as a subset of artificial intelligence. Machine learning algorithms build a model based on sample data, known as "training data", in order to make predictions or decisions without being explicitly programmed to do so.Machine learning algorithms are used in a wide variety of applications, such as email filtering and computer vision, where it is difficult or unfeasible to develop conventional algorithms to perform the needed tasks.
**Source**: [*Wikipedia*](https://en.wikipedia.org/wiki/Machine_learning)

## Objective of using Machine Learning in this project
The purpose of using Machine Learning in our project was to test various ML Algorithms to 
1) Find the accuracy in predicting the review score/outcome, and 
2) Using various pre-processing steps to improve the accuracy.

## Supervised Machine Learning Algorithms

Supervised learning is the machine learning task of learning a function that maps an input to an output based on example input-output pairs. It infers a function from labeled training data consisting of a set of training examples.In supervised learning, each example is a pair consisting of an input object (typically a vector) and a desired output value (also called the supervisory signal). A supervised learning algorithm analyzes the training data and produces an inferred function, which can be used for mapping new examples. (source: [Wikipedia](https://en.wikipedia.org/wiki/Supervised_learning)).

**Supervised ML Algorithms used in this project**

***1) Logistic Regression***

Logistic regression is a statistical model that in its basic form uses a logistic function to model a binary dependent variable, although many more complex extensions exist. In regression analysis, logistic regression (or logit regression) is estimating the parameters of a logistic model (a form of binary regression). (source: [Wikipedia](https://en.wikipedia.org/wiki/Logistic_regression))

- Simple Logistic Regression
    - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_Supervised)
    - Result: Balanced Accuracy Score = 0.957

### Challenges with Logistic Regression
A common problem in classification algorithms are class imbalances. Class imbalance refers to a situation in which the existing classes in a dataset aren't equally represented (i.e. when one class is much larger than the other class).

**Strategies to deal with class inbalances include the following:**
- Oversampling: Oversampling and undersampling in data analysis are techniques used to adjust the class distribution of a data set (i.e. the ratio between the different classes/categories represented). These terms are used both in statistical sampling, survey design methodology and in machine learning. (source: [Wikipedia](https://en.wikipedia.org/wiki/Oversampling_and_undersampling_in_data_analysis))
    - Native Random Oversampling
        - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_Supervised)
        - Result: Balanced Accuracy Score = 0.770

    - SMOTE Oversampling
        - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_Supervised)
        - Balanced Accuracy Score = 0.769
    
- Undersampling: Oversampling and undersampling in data analysis are techniques used to adjust the class distribution of a data set (i.e. the ratio between the different classes/categories represented). These terms are used both in statistical sampling, survey design methodology and in machine learning.(source: [Wikipedia](https://en.wikipedia.org/wiki/Oversampling_and_undersampling_in_data_analysis))
    - Random Undersampling
        - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_Supervised)
        - Balanced Accuracy Score = 0.770

- Combination Sampling: These algorithm combines aspects of both,  oversampling and undersampling.
    - SMOTEENN ((SMOTE and Edited Nearest Neighbors)
        - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_Supervised)
        - Balanced Accuracy Score = 0.773

***2) Random Forest and Easy Ensemble Classifier***

Random forests or random decision forests are an ensemble learning method for classification, regression and other tasks that operate by constructing a multitude of decision trees at training time and outputting the class that is the mode of the classes (classification) or mean/average prediction (regression) of the individual trees. (source: [Wikipedia](https://en.wikipedia.org/wiki/Random_forest))

Ensemble methods use multiple learning algorithms to obtain better predictive performance than could be obtained from any of the constituent learning algorithms alone. Unlike a statistical ensemble in statistical mechanics, which is usually infinite, a machine learning ensemble consists of only a concrete finite set of alternative models, but typically allows for much more flexible structure to exist among those alternatives. (source: [Wikipedia](https://en.wikipedia.org/wiki/Ensemble_learning))

- Random Forest Classifier
    - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_Supervised)
    - Balanced Accuracy Score = 0.787

- Easy Ensemble Classifier
    - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_Supervised)
    - Balanced Accuracy Score = 0.795

## NLP (Natural Language Processing) Algorithms

Natural language processing (NLP) is a subfield of linguistics, computer science, and artificial intelligence concerned with the interactions between computers and human language, in particular how to program computers to process and analyze large amounts of natural language data (source: [Wikipedia](https://en.wikipedia.org/wiki/Natural_language_processing) )

**NLP Algorithms used in this project**

1) *NLP - 1/2: NLP using Pyspark*
    - Platform: Google Colab, Algorithm: NaiveBayes
     - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_PySpark)
     - Accuracy Results:
        - For output as decimals (0.0 to 10.0): 0.21
        - For output as integers (0 to 10): 0.40
        - For output as 5-star ratings (1 to 5): 0.61
        - For output as 3 Categories (Bad, Average, or Good): 0.78
        - For output as Sentiment (Positive or Negative): 0.92
     - Summary of Results and Recommendation:
     This model is fast, and is not overfitted for the review outcomes as negative/positive. It works well when the outcome is in decimals/integers and more than 2 categories   
    - [***File to run the model on Google Colab here: Reading data from AWS PostgresSQL DataBase***](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_PySpark/Step10_Final_PySpark_NLP_reading_from_RDS.ipynb)


2) *NLP - 2/2: NLP using Deep Learning (2 layers)*
    - Platform: Google Colab, Model: [tf2-preview/gnews-swivel-20dim](https://tfhub.dev/google/tf2-preview/gnews-swivel-20dim/1)
    - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_DeepLearning)
    - Accuracy Results:
        - For output as decimals (0.0 to 10.0): 0.0
        - For output as integers (0 to 10): 0.0
        - For output as 5-star ratings (1 to 5): 0.0043
        - For output as 3 Categories (Bad, Average, or Good): 0.031
        - For output as Sentiment (Positive or Negative): 0.957
    - Summary of Results:  This model's accuracy for positive/negative review outcomes was better than the model above. The negative side was that this model was overfitted for output as positive/negative as the results below show.     
    - [***File to run the model on Google Colab here: Reading data from AWS PostgresSQL DataBase***](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_DeepLearning/Step4_NLP_DL_Review_Pos_Neg_Format.ipynb)
    - Testing the model in real-time
        1. Open Gooogle colab https://colab.research.google.com/
        2. Sign in with Google credentials
        3. [Upload this file on Google Colab](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_DeepLearning/Realtime_testing_of_DL_NLP_model.ipynb)
        4. [Place this file at the root of the Colab file above](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_DeepLearning/SavedModel5_NLP_DL_Review_Pos_Neg_Format.h5)
        5. Run the File: Runtime -> Run All
        6. Enter as many reviews as you want to test
        7. Watch the results!

## Recommendations
* If the company wants to have the review results in two categories - 'positive' and 'negative', then ***Logistic Regression*** and ***Deep Learning NLP*** are recommended - both have an accuracy score of 0.957.
* If the company wants any further granularity in the review output, then ***PySpark NLP*** is recommended.
* If a balance between granurality and accuracy is desired, then the 3 categories (good, bad, average) review output is suggested. These categories are easy for customers to understand. ***PySpark NLP*** is recommended as the model - it gives an accuracy score of 0.786.