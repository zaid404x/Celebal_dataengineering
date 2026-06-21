# Delta Lake MERGE Implementation using Databricks

## Objective

Perform incremental data processing using Delta Lake and implement MERGE operations to update existing records and insert new records.

## Dataset

- Dataset: Sample Superstore Dataset
- Source: Kaggle

## Steps Performed

1. Uploaded dataset to Databricks Volume.
2. Loaded CSV file using PySpark.
3. Performed data cleaning:
   - Removed duplicates
   - Handled null values
4. Renamed columns to Delta-compatible format.
5. Created Delta table (`superstore_master`).
6. Created incremental dataset.
7. Modified records to simulate updates.
8. Applied Delta Lake MERGE operation.
9. Validated updated records and row counts.
10. Displayed final merged dataset.

## Technologies Used

- Databricks
- Apache Spark
- Delta Lake
- PySpark

## MERGE Logic

```python
deltaTable.alias("target").merge(
    incremental_df.alias("source"),
    "target.Row_ID = source.Row_ID"
).whenMatchedUpdateAll() \
 .whenNotMatchedInsertAll() \
 .execute()
```

## Project Structure

```text
week7-delta-lake-merge/
├── data/
├── notebooks/
├── screenshots/
└── README.md
```

## Outcome

Successfully implemented Delta Lake MERGE operation for incremental data processing and validated the updated records.
