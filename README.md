# Analysis of Hospital Value-Based Purchasing Program from 2015-2021 #

## Hospital Value-Based Purchasing Program (HVBP) ##


## Overview ##

This project analyzes data from the CMS Hospital Value-Based Purchasing Program (HVBP) between 2015 and 2021. To begin, I inspected the data in Excel. Using the COUNTBLANK() function in Excel, I found there to be no missing values. I converted the “Not Avaliable” values in each table to blanks so they would register properly as null values when importing the data. I also removed unwanted columns and renamed columns for ease of querying. 

Next, I created a database called hvbp_project in PostgreSQL and created two tables to import the data into from csv format. See below for this code which was repeated to create the table for the 2021 data.

```SQL
CREATE DATABASE hvbp_project; 
```
```SQL
CREATE TABLE hvbp_2015 (
"Provider Number" int,
"State" varchar,
"Clinical Process of Care Score" float,
"Patient Experience of Care Score" float,
"Outcome Score" float,
"Efficiency Score" float,
"TPS" float						
);
```
```SQL
COPY hvbp_2015
FROM 'C:/Users/kodyk/Downloads/hvbp_tps_2015_revised.csv'
DELIMITER ','
CSV HEADER;
```

After importing the data, I then conducted various queries on the data using joins and grouping sets. Given the program has revised its quality and cost-effciency domains since the program’s inception, the sub-domain scores did not match up perfectly between 2015 & 2021. I mapped the patient experience of care score in 2015 to the person & community engagement score in 2021. I combined the clinical process of care and outcomes score in 2015 to create a clinical composite score with each weighted equally so it could be compared directly to the clinical outcomes domain score in 2021. I excluded the safety domain score since it was not included in 2015. Additionally, in my queries I opted to exclude null values. 

After querying the data, I exported the results of the queries in csv format and uploaded them to Tableau to visualize the data in a dashboard. The link to the dashboard in Tableau Public is below:
https://public.tableau.com/views/HVBPAnalysis2015-2021/HVBP2015-2016?:language=en-US&:display_count=n&:origin=viz_share_link


## Data Source ##
* The HVBP sub-domain and total performance score data for 2015 & 2021 was retrieved from: 
https://data.cms.gov/provider-data/archived-data/hospitals
