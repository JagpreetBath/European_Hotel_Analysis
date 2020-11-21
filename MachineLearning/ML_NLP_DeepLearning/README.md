# Natural Language Processing (NLP)

## Resources
* Google Colab
* Libraries - PySpark

### Initial thoughts and strategy
* The data has 16 columns and 512,470 rows
* There are 2 different columns for reviews: 'Positive reviews' and 'Negative Reviews'
* The column 'Positive reviews' has many entries as 'No Positive'
* The column 'Negative reviews' has many entries as 'No Negative'

### Strategy
* Drop 'No Positive' and 'No negative' entries
* Combining the 2 columns ('Positve Reviews' and 'Negative Reviews' into 1)
* Dropping all but 2 columns that are required for NLP

### Step 1: Processing data for Attempt 1
* Changing 'No Negative' and 'No Positive' entries under 'Negative Review' and 'Positive_Review' to null

    ```
    hotel_reviews.loc[(hotel_reviews["Negative_Review"] == "No Negative"), "Negative_Review"] = ''

    hotel_reviews.loc[(hotel_reviews["Positive_Review"] == "No Positive"), "Positive_Review"] = ''
    ```
* Merging Positive and Negative reviews into 1 column

    ```
    hotel_reviews["Review"] = hotel_reviews["Negative_Review"] + hotel_reviews["Positive_Review"]
    ```

* Retaining only two columns that are required for NLP - 'Review' and Reviewer_Score'

    ```
    hotel_reviews_for_NLP1_float_review_score = base_hotel_reviews_for_NLPs[['Review','Reviewer_Score']]
    ```
* Format of data for NLP1    
    ![Format_of_data_for_NLP1](images/Format_of_data_for_NLP1.png)


### Step 2: Running NLP (1st Attempt) and observing results

![NLP_1stAttempt_results](images/NLP_1_result.png)

### Next Steps ...
* The accuracy of the algorithm in predicting the output was 7.24%. 
* The reason behind this was that around 100 possibilities for reviewer_scores (0.0 to 10.0, in increments of 0.1)
* Solution - Rounding up the scores to integers will decrease the possibility for the scorest to 11 (0 to 10)

### Step 3: Processing data for Attempt 2
* Change the format of Reviewer_Score from FLOAT to INT
```
hotel_reviews['Reviewer_Score'] = hotel_reviews['Reviewer_Score'].astype(np.int64)
```
* Format of data for NLP2

    ![Format_of_data_for_NLP2](images/Format_of_data_for_NLP2.png)

### Step 4: Running NLP (2nd Attempt) and observing results

![NLP_2ndAttempt_results](images/NLP_2_result.png)

### Next Steps ...
* The accuracy of the algorithm in predicting the output was 11.85% (better than 7.24%), but still bad
* The reason behind this was that around 11 possibilities for reviewer_scores (0 to 10)
* We will convert the values in the column 'Reviewer_Score' to 3 categories - Bad, Average, and Good
    * Category 1: "Bad" - Score <= 4
    * Category 2: "Average" - Score 5-7
    * Category 3: "Good" - Score >= 8


### Step 5: Processing data for Attempt 3

* Converting values into Categories

```
hotel_reviews.loc[(hotel_reviews['Reviewer_Score'] <= 4), 'Review_Category'] = 'Bad'
hotel_reviews.loc[(hotel_reviews['Reviewer_Score'] >= 8), 'Review_Category'] = 'Good'
hotel_reviews.loc[(hotel_reviews['Reviewer_Score'] > 4) & (hotel_reviews['Reviewer_Score'] < 8), 'Review_Category'] = 'Average'
hotel_reviews
```

* Drop the column 'Reviewer_Score'
``` 
hotel_reviews = hotel_reviews.drop(columns ='Reviewer_Score')
```

* Format of data for NLP3

    ![Format_of_data_for_NLP3](images/Format_of_data_for_NLP3.png)

### Step 6: Running NLP (3rd Attempt) and observing results

![NLP_3rdAttempt_results](images/NLP_3_result.png)

### Next Steps ...
* The accuracy that we got last time was 45.55% (better than 11.85%), but still needs imporvement
* We will narrow down to 2 categories - positive and negative, and create a new column `Reviewer_sentiment`


### Step 7: Processing data for Attempt 4


* Creating a new column: 'Reviewer_Sentiment' - values 'positive' and 'negative'
```
hotel_reviews['Reviewer_Sentiment'] = ''
``` 
* Classifying reviews as positive and negative
```
hotel_reviews.loc[hotel_reviews["Reviewer_Score"] <= 4.9, "Reviewer_Sentiment"] = "negative"
hotel_reviews.loc[hotel_reviews["Reviewer_Score"] >= 5.0, "Reviewer_Sentiment"] = "positive"

```

* dropping the Column 'Reviewer_Score'
```
hotel_reviews = hotel_reviews.drop(columns = 'Reviewer_Score')
```

* Format of data for NLP3

    ![Format_of_data_for_NLP4](images/Format_of_data_for_NLP4.png)

### Step 8: Running NLP (4th Attempt) and observing results

![NLP_4thAttempt_results](images/NLP_4_result.png)

### Next Steps ...

The accurancy of the model now is 92.29% is is satisfactory, we will now run the model again (this time reading from a Database on AWS)

# Final Step - Running NLP and reading data from AWS RDS