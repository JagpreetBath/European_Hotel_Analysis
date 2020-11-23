# Data PreProcessing

Step 1: Observing the Source file: Hotel_Reviews.csv, we found
- It had 515738 rows × 17 columns 
- The columns could be divided into two groups: 'review group' and 'location group'

Step 2: Since there is no unique column in the table, we used the pandas dataframe index to creae a unique column 'Review_Id' for working with data in PostgreSQL

Step 3: Remove null values
- Step 3a: Check for null/na values
- Step 3b: Drop rows that are na/null and reset the index from 0
- Step 3c: The operation above will delete the index name, so renaming it again as 'Review_Id'
- Step 3d: Check for null again

Step 4: Breaking the big table into 2 tables: 1st with hotel reviews, 2nd with hotel locations
- Step 4a: Create Table 1: Hotel reviews only - no location data (drop columns 'lat'and 'lng')
- Step 4b: Create Table 2: DF with locations (no reviews)
- Step 4c: Create a subset of the dataframe with unique values on the column 'Hotel_Address' and then reset the index to 0
- Step 4d: Select only 4 columns that we want - "Hotel_Address", "Hotel_Name", "lat", "lng"

Step 5) Create sample tables with 1000 rows

Step 6) Extract city and country using lat and lng, using geopy
- Step 6a: Create a for loop to iterate through the rows, use the co-ordinates to pull the 'city' and 'county' and store them in the 'city' and 'country' columns

Step 7) Store the two tables in PostgreSQL
- Step 7a: Create the ERD diagrams using [QuickDBD](https://www.quickdatabasediagrams.com/)
- Step 7b: Create Schemas using [QuickDBD](https://www.quickdatabasediagrams.com/)
- Step 7c: Import the tables into PostgreSQL



