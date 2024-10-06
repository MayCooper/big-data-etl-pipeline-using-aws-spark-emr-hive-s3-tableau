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

## Final Dashboard

![image](https://github.com/user-attachments/assets/26a08d03-b457-4565-9df3-0a704aa8087b)

### Dashboard vizzes:
![image](https://github.com/user-attachments/assets/4cffdf0e-7693-4f26-ba81-91170cf533e9)
![image](https://github.com/user-attachments/assets/fc574a1c-1972-439f-be1a-25b37fa42e3f)
![image](https://github.com/user-attachments/assets/cfab8cb7-3397-4773-bb44-2692a6eeb3d9)
![image](https://github.com/user-attachments/assets/5a33067b-6876-4df6-8308-9023611ceebe)
![image](https://github.com/user-attachments/assets/cf1a8af6-cba9-4672-bdeb-fb57de27f7a2)

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

## Documentation of the Process: 

#### Setting up EMR cluster on AWS:
![image](https://github.com/user-attachments/assets/1b0357ca-cd3c-4601-9917-baede8431a54)
![image](https://github.com/user-attachments/assets/06c23842-24c3-46d8-a4dc-961bc1b33de6)

#### Creating cluster:
![image](https://github.com/user-attachments/assets/5a9d99ea-f17e-4591-80a9-87b910f20a8a)
![image](https://github.com/user-attachments/assets/72671314-f413-4382-8737-a6d2a7f58758)

#### Setting up inbound security rules:
![image](https://github.com/user-attachments/assets/15abb8c8-deb9-4ec2-a2f9-cb9f4fb8117a)

#### SSH-ing into the EMR cluster for setting up tables with hive:
![image](https://github.com/user-attachments/assets/eebca50d-821e-4243-bdb7-4a8314d5d265)

#### Signing into hive: 
![image](https://github.com/user-attachments/assets/24a61ad8-9a9c-4025-a509-f71567ec0254)

#### Creating S3 bucket:
![image](https://github.com/user-attachments/assets/e2497d37-e0ff-4444-9af3-974e350d0a7e)

#### Adding data into the S3 bucket:
![image](https://github.com/user-attachments/assets/1d280dbe-3147-4fac-a15f-9eceb1db8956)
![image](https://github.com/user-attachments/assets/8573dc88-88d1-4452-a254-521d881ddb01)

#### Configuring data paths:
![image](https://github.com/user-attachments/assets/5489709a-ba3d-4310-a664-45a82801f8a8)

#### Creating tables in hive:
![image](https://github.com/user-attachments/assets/13b60783-6388-4f48-b3f3-26fb92a135cc)
![image](https://github.com/user-attachments/assets/f78e2ffc-7e1a-4d08-8f14-ffe5935b2e91)

#### Several transformations are necessary:
![image](https://github.com/user-attachments/assets/aaf24da2-2ad6-4569-b3d7-71698b5a009c)

#### Showingc created tables in hive:
![image](https://github.com/user-attachments/assets/88d9ca2b-5bb9-444a-895a-5f7eb51b4a37)

#### Data snippet:
![image](https://github.com/user-attachments/assets/cc658950-f8b0-4c17-aa6e-c42440eb3b17)

#### Creating Yarn cluster:
![image](https://github.com/user-attachments/assets/fa5486ff-d5d6-40c5-8eb2-c4c9af793dcb)

#### Connecting Tableau to the data through the EMR Connector:
![image](https://github.com/user-attachments/assets/a45729bb-d3e0-4b06-8dbf-b7d671a62e49)
![image](https://github.com/user-attachments/assets/575e2bd9-d457-4c65-a71e-d315aa767493)
![image](https://github.com/user-attachments/assets/24ff5151-8703-4dc5-88e8-fefded13da2d)

#### Setting up data tables: 
![image](https://github.com/user-attachments/assets/7a70bb09-e654-4c0e-973b-b1e22724b2c0)
![image](https://github.com/user-attachments/assets/8e3e1635-18e9-4acf-a9fa-638338383042)


#### Beginning the visualization work:
![image](https://github.com/user-attachments/assets/41bcf105-74df-4776-bd7c-61648f768505)

#### Dashboard:
![image](https://github.com/user-attachments/assets/f06e7b13-b782-473e-985d-bf47e23a960f)

<script type="module" src="https://public.tableau.com/javascripts/api/tableau.embedding.3.latest.min.js"></script>


<tableau-viz id="tableauViz"       
  src='https://public.tableau.com/views/RetailSalesDashboard_17281084409940/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link'      
  toolbar="bottom" hide-tabs>
</tableau-viz>
