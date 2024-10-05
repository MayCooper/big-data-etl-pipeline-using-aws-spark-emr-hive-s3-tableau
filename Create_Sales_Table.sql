CREATE EXTERNAL TABLE IF NOT EXISTS sales_table
(
`Region` STRING,
`Country` STRING,
`Item_Type` STRING,
`Sales_Channel` STRING,
`Order_Priority` STRING,
`Order_Date` STRING,
`Order_ID` STRING,
`Ship_Date` STRING,
`Units_Sold` STRING,
`Unit_Price` STRING,
`Unit_Cost` STRING,
`Total_Revenue` STRING,
`Total_Cost` STRING,
`Total_Profit` STRING
) ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION 's3://etlemrdata/';