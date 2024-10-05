SET hive.exec.compress.intermediate=true;
SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;
SET hive.mapred.mode=nonstrict;

INSERT OVERWRITE TABLE final_sales_tbl partition(`Order_ID`)
SELECT
cast(`Region` as string),
cast(`Country` as string),
cast(`Item_Type` as string),
cast(`Sales_Channel` as string),
cast(`Order_Priority` as string),
coalesce(
CAST(from_unixtime(unix_timestamp(`Order_Date`, 'MM/dd/yyyy'), 'yyyy-MM-dd') as string),
CAST(from_unixtime(unix_timestamp(`Order_Date`, 'dd-MM-yyyy'), 'yyyy-MM-dd') as string)
),
coalesce(
CAST(from_unixtime(unix_timestamp(`Order_Date`, 'MM/dd/yyyy'), 'yyyy') as string),
CAST(from_unixtime(unix_timestamp(`Order_Date`, 'dd-MM-yyyy'), 'yyyy') as string)
) as `Order_Year`,
coalesce(
CAST(from_unixtime(unix_timestamp(`Ship_Date`, 'MM/dd/yyyy'), 'yyyy-MM-dd') as string),
CAST(from_unixtime(unix_timestamp(`Ship_Date`, 'dd-MM-yyyy'), 'yyyy-MM-dd') as string)
),
coalesce(
CAST(from_unixtime(unix_timestamp(`Ship_Date`, 'MM/dd/yyyy'), 'yyyy') as string),
CAST(from_unixtime(unix_timestamp(`Ship_Date`, 'dd-MM-yyyy'), 'yyyy') as string)
) as `Ship_Year`,   

cast(`Units_Sold` as int),
cast(`Unit_Price` as decimal),
cast(`Unit_Cost` as decimal),
cast(`Total_Revenue` as decimal),
cast(`Total_Cost` as decimal),
cast(`Total_Profit` as decimal)
FROM sales_table;