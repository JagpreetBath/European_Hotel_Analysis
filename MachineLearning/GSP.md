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
     - [Repo link]()
     - Results: This model is fast, and is not overfitted for the review outcomes as negative/positive. It works well when the outcome is in decimals/integers and more than 2 categories
        - For output as decimals: 20.77 %
        - For output as integers: 39.62%
        - For output as 3 Categories: 77.63%
        - For output as Positive or Negative: 91.56%
    - [***File to run the model on Google Colab here: Reading data from AWS PostgresSQL DataBase***](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_PySpark/Step10_Final_PySpark_NLP_reading_from_RDS.ipynb)



2) *NLP (Natural Language Processing) using Deep Learning (2 layers)*
    - Platform: Google Colab, Model: [tf2-preview/gnews-swivel-20dim](https://tfhub.dev/google/tf2-preview/gnews-swivel-20dim/1)
    - [Repo link]()
    - Results: This model's accuracy for positive/negative review outcomes was better than the model above. The negative side was that this model was overfitted for output as positive/negative as the results below show
        - For output as decimals: 0.0 %
        - For output as integers: 0.0 %
        - For output as 3 Categories: 3.10%
        - For output as Positive or Negative: 95.66 %
    - [***File to run the model on Google Colab here: Reading data from AWS PostgresSQL DataBase***](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning/ML_NLP_DeepLearning/Step4_NLP_DL_Review_Pos_Neg_Format)

### Supervised ML Learning Algorithms

Supervised learning is the machine learning task of learning a function that maps an input to an output based on example input-output pairs.[1] It infers a function from labeled training data consisting of a set of training examples.[2] In supervised learning, each example is a pair consisting of an input object (typically a vector) and a desired output value (also called the supervisory signal). A supervised learning algorithm analyzes the training data and produces an inferred function, which can be used for mapping new examples. (source - [Wikipedia](https://en.wikipedia.org/wiki/Supervised_learning))

**Supervised ML Algorithms used in this project**

...Work in Progress (working on Logistic Regression, Random Forest, Easy Ensemble)