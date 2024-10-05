CREATE TABLE IF NOT EXISTS final_sales_tbl
(
    `Region` STRING,
    `Country` STRING,
    `Item_Type` STRING,
    `Sales_Channel` STRING,
    `Order_Priority` STRING,
    `Order_Date` STRING,
    `Order_Year` STRING,
    `Ship_Date` STRING,
    `Shipped_Year` STRING,
    `Units_Sold` INT,
    `Unit_Price` FLOAT,
    `Unit_Cost` FLOAT,
    `Total_Revenue` FLOAT,
    `Total_Cost` FLOAT,
    `Total_Profit` FLOAT
) PARTITIONED BY (`Order_ID` INT)
STORED AS ORC;