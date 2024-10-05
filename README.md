# End-to-End Big Data ETL Pipeline with AWS EMR, Spark, Hive, S3, and Tableau

This project demonstrates the implementation of an end-to-end ETL pipeline using Apache Spark on AWS EMR. The pipeline extracts sales data from AWS S3, processes and transforms it using Hive on EMR, and stores the final output in a Hive data warehouse. The data is then visualized using Tableau to generate insightful dashboards.

## Key features of the project include:

- **Data Extraction**: Sales data is extracted from an S3 bucket.
- **Data Transformation**: Using Apache Spark on AWS EMR, the data is transformed and processed in Hive with MapReduce jobs.
- **Data Loading**: Processed data is loaded into Hive for storage and further queries.
- **Visualization**: Tableau connects to the Hive data warehouse to generate visual dashboards and insights.
- **Technologies Used**: AWS S3, EMR, Apache Spark, Apache Hive, Tableau, and Python.

This project highlights how to build a scalable, cost-efficient ETL pipeline leveraging AWS cloud services for big data processing.

## Project Overview

This project demonstrates a comprehensive ETL (Extract, Transform, Load) pipeline built using AWS technologies and Apache tools. It efficiently processes large-scale sales data, applying necessary transformations and storing the processed data for analysis. The final step involves data visualization using Tableau to generate actionable business insights.

## Architecture Diagram

![image](https://github.com/user-attachments/assets/6f309c58-a9dc-4a17-b32f-ec77318b1789)

The diagram above outlines the architecture of the ETL pipeline, illustrating how data flows from source to final visualization.

## Workflow

1. **Data Extraction**: The sales data is periodically uploaded to an AWS S3 bucket by external data vendors. The pipeline begins by extracting the raw data from the S3 bucket.
2. **Data Processing**: 
   - Apache Hive is used to define and manage schema.
   - Apache Spark on AWS EMR processes the data, performing necessary transformations such as cleaning, formatting dates, and handling missing values.
3. **Data Loading**: Once processed, the data is stored in Hive tables on the EMR cluster, which serves as a data warehouse.
4. **Data Visualization**: Tableau connects to Hive to visualize the data in the form of dashboards and reports, allowing for easy analysis of sales trends, revenue, and other key metrics.

## Technologies and Tools

- **AWS S3**: Object storage service used for storing raw sales data.
- **AWS EMR**: Managed Hadoop framework that helps process large amounts of data using Apache Spark and Hive.
- **Apache Hive**: Data warehouse system for querying and managing large datasets in a distributed environment.
- **Apache Spark**: Fast, general-purpose cluster-computing system for large-scale data processing.
- **Tableau**: Data visualization tool used to create dashboards from the processed data in Hive.

