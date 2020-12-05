# European Hotel Analysis

## Project Overview
Sally wants to go on vacation. She is thinking about where to go and which hotel should she choose to stay? What are her options? 
1. Choose randomly 
2. Choose based on experience or recommendation of friends and family 
3. Choose based on Hours of Research

The topic we select for our Final Project is a "European Hotel Review Analysis". The objective of our project is to create a web application that can be used by the consumer to find hotels faster and easily, and hotel management can use to improve their performance. Here are the steps that will allow us to achieve our goal: 
1. Create a database and host it on AWS.
2. Run various machine learning models to predict review scoring and compare which machine learning model is most accurate.
3. Create a fully functioning and interactive dashboard using tableau.
4. Create and host a Web application on Github to showcase results. 

Lastly, based on previous class deliverables and group research done by the project team, the dataset presents the best opportunity to showcase skills associated with ETL (Extract, Transfer, and Load), machine learning models, and data visualization.

### Selected Topic
The selected topic for Final Project is a "European Hotel Review Analysis". The dataset is associated with hotel reviews all over Europe. The objective of this project is to run various machine learning models to predict review scoring and compare which machine learning model is most accurate, create a database to store the data which will be used in our machine learning and create a fully functioning and interactive dashboard using tableau and showcase results on Web application.

### Reason why we selected our topic
Based on previous class deliverables and group research done by the project team, the dataset presents the best opportunity to showcase skills associated with ETL (Extract, Transfer, and Load), machine learning models, and interactive data visualization dashboards.

### Description of their source of data
This dataset contains 515,000 customer reviews and a scoring of 1493 luxury hotels across Europe. The geographical location of hotels is also provided. The data was scraped from Booking.com. All data in the file is publicly available to everyone already. Data is originally owned by Booking.com. 

[Data Link ](https://www.kaggle.com/jiashenliu/515k-hotel-reviews-data-in-europe)

#### Data Content
The CSV file contains 17 fields. The description of each field is as below:
- Hotel_Address: Address of the hotel.
- Review_Date: Date when the reviewer posted the corresponding review.
- Average_Score: Average Score of the hotel, calculated based on the latest comment in the last year.
- Hotel_Name: Name of Hotel
- Reviewer_Nationality: Nationality of Reviewer
- Negative_Review: Negative Review the reviewer gave to the hotel. If the reviewer does not give a negative review, then it should be: 'No Negative'
- ReviewTotalNegativeWordCounts: Total number of words in the negative review.
- Positive_Review: Positive Review the reviewer gave to the hotel. If the reviewer does not give a negative review, then it should be: 'No Positive'
- ReviewTotalPositiveWordCounts: Total number of words in the positive review.
- Reviewer_Score: Score the reviewer has given to the hotel, based on his/her experience
- TotalNumberofReviewsReviewerHasGiven: Number of Reviews the reviewers have given in the past.
- TotalNumberof_Reviews: Total number of valid reviews the hotel has.
- Tags: Tags reviewer gave the hotel.
- dayssincereview: Duration between the review date and scrape date.
- AdditionalNumberof_Scoring: There are also some guests who just made scoring on the service rather than a review. This number indicates how many valid scores without review in there.
- lat: Latitude of the hotel
- lng: longitude of the hotel

### Questions we are trying answer/ What are we trying to learn

- Train and evaluate various machine learning models to determine which selected machine learning model predicts the review score with the highest accuracy.
- What is the Avg Review Score per Country?
- What % are positive reviews and negative reviews per Country?
- Overtime - Did the Avg Reviews score of the Country improved or degraded?  
- What are the Top 5 hotels with the highest review score per Country?
- Overtime - Did the Avg Reviews score of the Top 5 Hotels per Country improved or degraded?
- What is the Number of Reviews per Reviewer Nationality?
- What are the Top 5 Reviewer Nationality per country?
- What % are positive reviews and negative reviews per Top 5 Reviewer Nationality per Country?
- Based on the reviewer's nationality - What are the positive and negative Avg words count per Top 5 Hotels per country?
- What is the recommended hotel per country?


## Resources 
[Website](https://jagpreetbath.github.io/European_Hotel_Analysis/index.html)

[Google Slides](https://docs.google.com/presentation/d/18UyDqehfuOY-jSQNCMsIw5Z9MuEUVRClHHr3JhimY5A/edit?usp=sharing)

[Tableau Workbook](https://public.tableau.com/profile/jagpreet.bath#!/vizhome/European_Hotel_Analysis/Country)

[Web Application Template](https://www.creative-tim.com/new-issue/black-dashboard)

[Machine Learning](https://github.com/JagpreetBath/European_Hotel_Analysis/tree/main/MachineLearning)

[Entity Relationship Diagram](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/DataBase/PostgresSQL/ERD_Schemas/DB_ERD.png)

[Database Schema](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/DataBase/PostgresSQL/ERD_Schemas/DB_Schema.sql)

[Sample Hotel Reviews Data ](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/DataFiles/TransformedData/tables/sample_of_hotel_reviews.zip)

[Sample Hotel Location Data ](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/DataFiles/TransformedData/tables/sample_of_hotel_location.zip)

[PostgreSQL Table (Hotel Location) Image](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/DataBase/PostgresSQL/Sample_hotel_location.png)

[PostgreSQL Table (Hotel Reviews) Image](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/DataBase/PostgresSQL/Sample_hotel_reviews.png)

[Connection of PySpark NLP ML model to the database](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_PySpark/Step12_Final_PySpark_NLP_reading_from_RDS.ipynb)

[Connection of DeepLearning NLP ML model to the database](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning/ML_NLP_DeepLearning/Step4_NLP_DL_Review_Pos_Neg_Format.ipynb)
