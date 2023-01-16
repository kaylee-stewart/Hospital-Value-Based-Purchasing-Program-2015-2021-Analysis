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




## Data Source ##
* The data for this project was retrieved at the following link on the CMS.gov website: 
https://data.cms.gov/provider-data/archived-data/hospitals
