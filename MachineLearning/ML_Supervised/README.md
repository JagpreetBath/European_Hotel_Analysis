# European_Hotel_Analysis (First Draft)

## Overview of the Logistic Regression, Random Forest, and Easy Ensemble Classifier Machine Learning Models

One of the purposes of the machine learning portion of our project is to predict whether hotel reviews from customers would be "positive" or "negative" by employing different techniques to build and evaluate models using resampling.  Initially, we oversampled the data with the RandomOverSampler and SMOTE algorithms, then followed that by undersampling data using the RandomUnderSampler and ClusterCentroids algorithm.  Finally, we used a combined sampling approach using the SMOTEENN algorithm.  This is part of the Logistic Regression machine learning model.

After completing our Logistic Regression we ran two other algorithms, BalancedRandomForestClassifier and EasyEnsembleClassifier to predict "positive" or "negative" hotel reviews.  The performances of all three machine learning models were compared with each other to determine if one model was more efficient than the others.

Utilizing the Reviewer_Score column in our dataset, we initially created a new Review_Class column in our data table, then separated the Reviewer_Score values into either "positive" or "negative" categories.  Reviewer_Score values greater than or equal to 5.0 were classified as "positive" and Reviewer_Score values less than or equal to 4.9 were classified as "negative".  Afterward, we used the label encoders on the positive and negative categories as well as the Country column in our dataset to convert the string values into float values.

The target variable (Review_Class) was then identified, while all irrelevant columns in our dataset were discarded for our machine learning models.  We then ran our three previously mentioned machine learning models; Logistic Regression, Random Forest, and Easy Ensemble Classifier.  The coding and results for all methods except for the results for the Cluster Centroid Undersampling can be found inside this folder.
