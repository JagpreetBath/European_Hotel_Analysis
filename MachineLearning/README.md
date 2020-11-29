# Machine Learning

## Overview of Machine Learning
Machine learning (ML) is the study of computer algorithms that improve automatically through experience. It is seen as a subset of artificial intelligence. Machine learning algorithms build a model based on sample data, known as "training data", in order to make predictions or decisions without being explicitly programmed to do so.Machine learning algorithms are used in a wide variety of applications, such as email filtering and computer vision, where it is difficult or unfeasible to develop conventional algorithms to perform the needed tasks.

**Source**: [*Wikipedia*](https://en.wikipedia.org/wiki/Machine_learning)

## Use of Machine Learning in this project
The purpose of the machine learning portion of our project was to predict whether hotel reviews from customers would be positive or negative by employing different ML techniques (NLP, Supervised and Unsupervised). We oversampled data with the RandomOverSampler and SMOTE algorithms, then undersampled data using the ClusterCentroids algorithm, followed by a combined approach using the SMOTEENN algorithm.  Finally we compared two new algorithms, BalancedRandomForestClassifier and EasyEnsembleClassifier to predict positive or negative hotel reviews. The performances of all these algorithms were compared to determine if one model was more efficient than the others.

## Machine Learning Algorithms used in this project

### NLP (Natural Language Processing) Algorithms

Natural language processing (NLP) is a subfield of linguistics, computer science, and artificial intelligence concerned with the interactions between computers and human language, in particular how to program computers to process and analyze large amounts of natural language data (source: [Wikipedia](https://en.wikipedia.org/wiki/Natural_language_processing) )

**NLP Algorithms used in this project**

1) *NLP (Natural Language Processing) using Pyspark*
    - Platform: Google Colab, Algorithm: NaiveBayes
     - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_PySpark)
     - Results: This model is fast, and is not overfitted for the review outcomes as negative/positive. It works well when the outcome is in decimals/integers and more than 2 categories
        - For output as decimals: 20.77 %
        - For output as integers: 39.62%
        - For output as 3 Categories: 77.63%
        - For output as Positive or Negative: 91.56%
    - [***File to run the model on Google Colab here: Reading data from AWS PostgresSQL DataBase***](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_PySpark/Step10_Final_PySpark_NLP_reading_from_RDS.ipynb)



2) *NLP (Natural Language Processing) using Deep Learning (2 layers)*
    - Platform: Google Colab, Model: [tf2-preview/gnews-swivel-20dim](https://tfhub.dev/google/tf2-preview/gnews-swivel-20dim/1)
    - [Repo link](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_DeepLearning)
    - Results: This model's accuracy for positive/negative review outcomes was better than the model above. The negative side was that this model was overfitted for output as positive/negative as the results below show
        - For output as decimals: 0.0 %
        - For output as integers: 0.0 %
        - For output as 3 Categories: 3.10%
        - For output as Positive or Negative: 95.66 %
    - [***File to run the model on Google Colab here: Reading data from AWS PostgresSQL DataBase***](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_DeepLearning/Step4_NLP_DL_Review_Pos_Neg_Format.ipynb)

### Supervised ML Learning Algorithms

Supervised learning is the machine learning task of learning a function that maps an input to an output based on example input-output pairs.[1] It infers a function from labeled training data consisting of a set of training examples.[2] In supervised learning, each example is a pair consisting of an input object (typically a vector) and a desired output value (also called the supervisory signal). A supervised learning algorithm analyzes the training data and produces an inferred function, which can be used for mapping new examples. (source - [Wikipedia](https://en.wikipedia.org/wiki/Supervised_learning))

**Supervised ML Algorithms used in this project**

[...Work in Progress](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_Supervised)

### Logistic Regression Algorithms

Logistic Regression is a supervised Machine Learning classification algorithm which is used to predict the probability of a target variable.  The nature of the target or dependent variable is dichotomous, which means there would be only two possible classes.  In other words, the dependent variable is binary in nature having data coded as either 1 (sucess/yes) or 0 (failure/no). 

(source: [Wikipedia](https://www.tutorialspoint.com/machine_learning_with_python/machine_learning_with_python_classification_algorithms_logistic_regression.htm))

A common problem in classification algorithms are class imbalances.  Class imbalance refers to a situation in which the existing classes in a dataset aren't equally represented (i.e. when one class is much larger than the other class).  

Strategies to deal with class inbalances include the following:

Oversampling: If one class has too few instances in the training set, we choose more instances from that class until it's larger.  Examples of oversampling include Random Oversampling and SMOTE (Synthetic Minority Oversampling Technique).  SMOTE involves interpolating the minority class while Random Oversampling involves random selection and addition of the minority class.

(source: [Wikipedia](https://bootcampspot.instructure.com/courses/193/pages/17-dot-10-dot-1-oversampling?module_item_id=102452))

Undersampling: Undersampling takes the opposite approach of oversampling. Instead of increasing the number of the minority class, the size of the majority class is decreased.  Examples of oversampling include Random Undersampling and Cluster Centroid Undersampling.  Cluster Centroid Undersampling involves identifying clusters of the majority class and generating synthetic data points while Random Undersampling involves random selection and reduction of the majority class.

(source: [Wikipedia](https://bootcampspot.instructure.com/courses/193/pages/17-dot-10-dot-2-undersampling?module_item_id=102454))

SMOTEENN (SMOTE and Edited Nearest Neighbors) is an algorithm that combines aspects of both oversampling and undersampling.  

### Random Forest and Easy Ensemble Classifier Algorithms

Bagging is an ensemble algorithm that fits multiple models on different subsets of a training dataset, then combines the predictions from all models.

Random forest is an extension of bagging that also randomly selects subsets of features used in each data sample. Both bagging and random forests have proven effective on a wide range of different predictive modeling problems.

The Easy Ensemble involves creating balanced samples of the training dataset by selecting all examples from the minority class and a subset from the majority class.

(source: [Wikipedia](https://machinelearningmastery.com/bagging-and-random-forest-for-imbalanced-classification/))

## Summary of Chosen Machine Learning Models Results

Listed below are the precision and the recall/sensitivity scores from the 3 machine learning models:  

1) Logistic Regression
Native Random Oversampling: Precision Average = 0.92, Recall/Sensitivity Average = 0.28
![Random Forest Classifier Pre and Rec Avg.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Random%20Oversampling%20Pre%20and%20Rec%20Avg.png)

SMOTE Oversampling: Precision Average = 0.92, Recall/Sensitivity Average = 0.28
![SMOTE Oversampling Pre and Rec Avg.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/SMOTE%20Oversampling%20Pre%20and%20Rec%20Avg.png)

Random Undersampling: Precision Average = 0.92, Recall/Sensitivity Average = 0.28
![Random Undersampling Pre and Rec Avg.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Random%20Undersampling%20Pre%20and%20Rec%20Avg.png)

SMOTEENN Combination: Precision Average = 0.92, Recall/Sensitivity Average = 0.28
![Combined Sampling SMOTEENN Pre and Rec Avg.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Combined%20Sampling%20SMOTEENN%20Pre%20and%20Rec%20Avg.png)

2) Random Forest Classifier
BalancedRandomForestClassifier: Precision Average = 0.94, Recall/Sensitivity Average = 0.65
![Random Forest Classifier Pre and Rec Avg.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Random%20Forest%20Classifier%20Pre%20and%20Rec%20Avg.png)

3) Easy Ensemble Classifier
EasyEnsembleClassifier: Precision Average = 0.93, Recall/Sensitivity Average = 0.56
![Easy Ensemble Classifier Pre and Rec Avg.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Easy%20Ensemble%20Classifier%20Pre%20and%20Rec%20Avg.png)

Listed below are the balanced accuracy scores from the 3 machine learning models:

1) Logistic Regression
Simple Logistic Regression: Balanced Accuracy Score = 0.957
![Simple Logistic Regression Accuracy Score.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Simple%20Logistic%20Regression%20Accuracy%20Score.png)

Native Random Oversampling: Balanced Accuracy Score = 0.523
![Random Oversampling Accuracy Score.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Random%20Oversampling%20Accuracy%20Score.png)

SMOTE Oversampling: Balanced Accuracy Score = 0.523
![SMOTE Oversampling Accuracy Score.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/SMOTE%20Oversampling%20Accuracy%20Score.png)

Random Undersampling: Balanced Accuracy Score = 0.523
![Random Undersampling Accuracy Score.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Random%20Undersampling%20Accuracy%20Score.png)

SMOTEENN Combination: Balanced Accuracy Score = 0.523
![SMOTEENN Combined Sampling Accuracy Score.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/SMOTEENN%20Combined%20Sampling%20Accuracy%20Score.png)

2) Random Forest Classifier
BalancedRandomForestClassifier: Balanced Accuracy Score = 0.659
![Random Forest Classifier Accuracy Score.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Random%20Forest%20Classifier%20Accuracy%20Score.png)

3) Easy Ensemble Classifier
EasyEnsembleClassifier: Balanced Accuracy Score = 0.599
![Easy Ensemble Classifier Accuracy Score.png](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/Analysis_Segment_3_Ashok/MachineLearning/ML_Supervised/ML_Supervised%20Pictures/Easy%20Ensemble%20Classifier%20Accuracy%20Score.png)

## Summary

To summarize, Logistic Regression, Random Forest, and Easy Ensemble are used to address class imbalance scenarios.  Class imbalance refers to when one class is much larger than another class in a set of data.  In our European Hotel Analysis, class imbalances refer to positive and negative hotel reviews.  Judging by the reviews in our original dataset, there are a far greater number of positive reviews over negative ones.

When looking only at the Balanced Accuracy Scores (not accounting for the Precision Averages and the Recall/Sensitivity Averages), one can see that the highest score belongs to the Simple Logistic Regression algorithm (0.957).  However, when looking at the Precision Averages (0.94), the Recall/Sensitivity Averages (0.65), as well as the high Balanced Accuracy Score (0.659), we would recommend the (Random Forest Classifier) algorithm to use for predicting positive and negative hotel reviews.

Generally speaking, as we moved from logistic regression algorithms to other algorithms such as Random Forest and Easy Ensemble Classifiers the averages and accuracy scores generally increased.  This is not necessarily surprising as Random Forest and Easy Ensemble Classifiers combining different subsets of the minority and majority data.