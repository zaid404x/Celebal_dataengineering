# Week 5 - Spark Data Cleaning, Transformation and Aggregation

## Objective

The objective of this assignment is to understand Apache Spark fundamentals and perform data cleaning, transformation, filtering, and aggregation using Spark DataFrames. The assignment demonstrates how Spark can be used to process structured data efficiently while handling common data quality issues.

---

## Technologies Used

* Apache Spark (PySpark)
* Python
* Jupyter Notebook
* CSV Dataset

---

## Dataset Overview

A synthetic employee dataset was created containing employee information such as:

* Employee ID
* Name
* Department
* Age
* Salary
* Region

The dataset intentionally included duplicate records, null values, and inconsistent entries to demonstrate data cleaning techniques.

---

## Tasks Performed

### 1. Data Loading

* Created a Spark Session
* Loaded the CSV dataset into a Spark DataFrame
* Examined the schema and dataset structure

### 2. Data Cleaning

* Identified missing values
* Removed duplicate records using `dropDuplicates()`
* Filled null values using `fillna()`
* Removed rows containing critical missing fields
* Handled empty string values

### 3. Data Filtering

* Filtered employees based on age range
* Filtered records by region
* Filtered records by department/category

### 4. Schema Modification

* Renamed columns
* Casted columns to appropriate data types
* Verified schema changes using `printSchema()`

### 5. Derived Columns

* Created a new Bonus column based on employee salary

### 6. Aggregations

Applied the following aggregation functions:

* Count
* Sum
* Average
* Minimum
* Maximum

### 7. GroupBy Operations

* Grouped records by department
* Calculated department-wise statistics
* Applied conditions on aggregated results

### 8. Data Processing Pipeline

Built a complete Spark pipeline combining:

* Data cleaning
* Data transformation
* Aggregation
* Analysis

---

## Spark Concepts Covered

### Limitations of MapReduce

* Disk-based processing increases execution time
* Not efficient for iterative workloads
* High latency due to repeated disk reads and writes

### Advantages of Spark

* In-memory processing
* Faster execution
* Better support for iterative algorithms
* Easy-to-use DataFrame APIs

### DataFrame Immutability

Spark DataFrames are immutable. Any transformation creates a new DataFrame instead of modifying the original one.

### Wide Transformations and Shuffle

Operations such as `groupBy()` trigger a shuffle where data is redistributed across partitions. This makes them wide transformations and can impact performance on large datasets.

---

## Key Insights

* Duplicate records were successfully removed.
* Missing values were handled to improve data quality.
* Data filtering helped extract meaningful subsets of data.
* Department-wise aggregation provided useful business insights.
* Spark DataFrames enabled efficient processing and transformation of structured data.
* The assignment demonstrated how Spark can be used to build scalable data processing workflows.

---

## Conclusion

This assignment provided hands-on experience with Apache Spark DataFrames and covered important concepts such as data cleaning, filtering, schema modification, aggregations, groupBy operations, immutability, and shuffle processing. Spark's distributed architecture and in-memory computing capabilities make it a powerful tool for modern big data analytics.
