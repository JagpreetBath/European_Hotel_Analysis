-- Joining the 2 tables into 1 table 
create table "Hotel_reviews_and_locations_combined_table" AS
SELECT 
	public."Hotel_Reviews"."Id",
	public."Hotel_Reviews"."Hotel_Address",
	public."Hotel_Reviews"."Additional_Number_of_Scoring",
	public."Hotel_Reviews"."Review_Date",
	public."Hotel_Reviews"."Average_Score",
	public."Hotel_Reviews"."Hotel_Name",
	public."Hotel_Reviews"."Reviewer_Nationality",
	public."Hotel_Reviews"."Negative_Review",
	public."Hotel_Reviews"."Review_Total_Negative_Word_Counts",
	public."Hotel_Reviews"."Total_Number_of_Reviews",
	public."Hotel_Reviews"."Review_Total_Positive_Word_Counts",
	public."Hotel_Reviews"."Total_Number_of_Reviews_Reviewer_Has_Given",
	public."Hotel_Reviews"."Reviewer_Score",
	public."Hotel_Reviews"."Tags",
	public."Hotel_Reviews"."days_since_review",
	public."Hotel_Location"."lat",
	public."Hotel_Location"."lng"
from public."Hotel_Reviews"
left join public."Hotel_Location" ON public."Hotel_Reviews"."Hotel_Address" =public."Hotel_Location"."Hotel_Address";