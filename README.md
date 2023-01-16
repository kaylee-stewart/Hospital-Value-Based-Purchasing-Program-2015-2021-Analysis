# Analysis of Hospital Value-Based Purchasing Program from 2015-2021 #

## Hospital Value-Based Purchasing Program (HVBP) ##


## Overview ##

This project analyzes trends within the CMS Hospital Value-Based Purchasing Program (HVBP) between 2015 and 2021. 

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
