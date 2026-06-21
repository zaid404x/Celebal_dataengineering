# Week 7 - Delta Lake MERGE Implementation using Databricks

## Overview

This project demonstrates the implementation of incremental data processing using Delta Lake in Databricks. The objective was to load a dataset, perform data cleaning, create an incremental dataset, and apply a MERGE operation to efficiently update existing records and insert new records.

The project highlights how Delta Lake enables reliable data management through ACID transactions and supports modern data engineering workflows by handling incremental updates without reprocessing the entire dataset.

Using the Sample Superstore Dataset, a Delta table was created after performing basic cleaning operations such as removing duplicates and handling missing values. An incremental dataset was then generated to simulate newly arriving data. The Delta Lake MERGE operation was used to perform UPSERT functionality, ensuring that existing records were updated while new records were inserted seamlessly.

Finally, the results were validated by verifying updated records and reviewing the final dataset. This implementation provides practical experience with Databricks, Apache Spark, Delta Lake, and incremental data processing techniques commonly used in real-world data engineering projects.

## Technologies Used

- Databricks
- Apache Spark (PySpark)
- Delta Lake
- Python
- GitHub

## Key Concepts Covered

- Delta Lake
- ACID Transactions
- Data Cleaning
- Incremental Data Processing
- MERGE (UPSERT) Operations
- Data Validation
- Databricks Notebook Management

## Learning Outcomes

Through this project, I gained hands-on experience with:

- Working with Databricks notebooks and serverless compute
- Loading and transforming datasets using PySpark
- Creating and managing Delta tables
- Implementing MERGE operations for incremental updates
- Validating data consistency after updates
- Understanding practical Delta Lake workflows used in modern data engineering environments

## Author

**Zaid Pathan**  
B.Tech Computer Science Engineering  
Amity University

## Assignment

**Celebal Technologies – Data Engineering Internship**  
**Week 7: Delta Lake MERGE Implementation**
