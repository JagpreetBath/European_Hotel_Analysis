# European Hotel Analysis

## Project Overview

### Selected Topic
The selected topic for Final Project is a "European Hotel Review Analysis".  The dataset is associated with hotel reviews all over Europe.  The objective of this project is to run various machine learning models to predict review scoring and compare which machine learning model is most accurate, create a database to store the data which will be used in our machine learning and data visualization using tableau and/or D3.js with Web application to create a fully functioning and interactive dashboard.

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
- Find the nationality with the top five review count (both highest and lowest). 
- Based on the nationality of the reviewer, is the score positive or negative?
- Count of tokenized positive and negative words used by nationality.
- Create an interactive map featuring the location of each hotel with popup markers which include the respective details.

## Resources 
[Entity Relationship Diagram](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/database_design/ERD_Schemas/DB_ERD.png)

[Database Schema](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/database_design/ERD_Schemas/DB_Schema.sql)

[Sample Hotel Reviews Data ](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/database_design/Tables/sample_table_hotel_reviews.csv)

[Sample Hotel Location Data ](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/database_design/Tables/sample_table_hotel_location.csv)

[PostgreSQL Table (Hotel Location) Image](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/database_design/Sample_hotel_location.png)

[PostgreSQL Table (Hotel Reviews) Image](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/database_design/Sample_hotel_reviews.png
)

[Connection of ML model to the provisional database](https://github.com/JagpreetBath/European_Hotel_Analysis/blob/main/MachineLearning_Prototype/NLP_Numerical_Reviews.ipynb)

