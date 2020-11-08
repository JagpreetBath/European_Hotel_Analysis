-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Hotel_Reviews" (
    "Id" int   NOT NULL,
    "Hotel_Address" varchar   NOT NULL,
    "Additional_Number_of_Scoring" int   NOT NULL,
    "Review_Date" date   NOT NULL,
    "Average_Score" float   NOT NULL,
    "Hotel_Name" varchar   NOT NULL,
    "Reviewer_Nationality" varchar   NOT NULL,
    "Negative_Review" varchar   NOT NULL,
    "Review_Total_Negative_Word_Counts" int   NOT NULL,
    "Total_Number_of_Reviews" int   NOT NULL,
    "Positive_Review" varchar   NOT NULL,
    "Review_Total_Positive_Word_Counts" int   NOT NULL,
    "Total_Number_of_Reviews_Reviewer_Has_Given" int   NOT NULL,
    "Reviewer_Score" float   NOT NULL,
    "Tags" varchar   NOT NULL,
    "days_since_review" varchar   NOT NULL,
    CONSTRAINT "pk_Hotel_Reviews" PRIMARY KEY (
        "Id"
     )
);

CREATE TABLE "Hotel_Location" (
    "Hotel_Address" varchar   NOT NULL,
    "Hotel_Name" varchar   NOT NULL,
    "lat" float   NOT NULL,
    "lng" float   NOT NULL,
    CONSTRAINT "pk_Hotel_Location" PRIMARY KEY (
        "Hotel_Address"
     )
);

ALTER TABLE "Hotel_Reviews" ADD CONSTRAINT "fk_Hotel_Reviews_Hotel_Address" FOREIGN KEY("Hotel_Address")
REFERENCES "Hotel_Location" ("Hotel_Address");

