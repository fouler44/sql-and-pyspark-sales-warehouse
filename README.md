# Sales Data Analytics | Modern Data Engineering Databricks Project

## Introduction

This project demonstrates a modern data engineering workflow built entirely on Databricks, following a Medallion Architecture approach for scalable and maintainable analytics. 

Most of the data processing is done using SQL within Databricks, where data is loaded, cleaned, and transformed step by step. To complement this, a PySpark notebook reproduces the same transformation logic, mainly as a learning exercise to practice Spark.

## Data Architecture

![Data Architecture](https://github.com/fouler44/sql-and-pyspark-sales-warehouse/blob/main/docs/Data%20Architecture.png?raw=true)

1. **Bronze Layer**: Stores raw data from the source systems. Data is ingested from CSV files into Databricks.
2. **Silver Layer**: This layer is where the distinct transformations take place. the data is getting ready for analysis.
3. **Gold Layer**: Business-ready data is modeled into a star schema suitable for reporting and analytics.

## Technologies used

1. Databricks Community Edition
    - Databricks Notebooks
    - Databricks Dashboards
3. Spark SQL
4. PySpark

## Data Model

![Data Model](https://github.com/fouler44/sql-and-pyspark-sales-warehouse/blob/main/docs/Data%20Model.png?raw=true)

Dimensions:
- Customers: dim_customers contains information about the customer such as name, country, and birthdate.
- Products: dim_products contains information about the products such as name, category, and cost.

Facts:
- Sales: fact_sales contains information about the sales such as quantity and various dates, linked to the dimension tables through their respective surrogate keys.

## Visualization

The following visualizations were created directly in Databricks to validate the data model and support exploratory analysis:

![Top 10 Most Sold Products](https://github.com/fouler44/sql-and-pyspark-sales-warehouse/blob/main/docs/Top%2010%20Most%20Sold%20Products.png?raw=true)
![Revenue Share by Country](https://github.com/fouler44/sql-and-pyspark-sales-warehouse/blob/main/docs/Revenue%20Share%20by%20Country.png?raw=true)
![Total Sales by Month](https://github.com/fouler44/sql-and-pyspark-sales-warehouse/blob/main/docs/Total%20Sales%20by%20Month.png?raw=true)

## Project Structure

- **[datasets/](https://github.com/fouler44/sql-and-pyspark-sales-warehouse/tree/main/datasets)**  
  Contains the raw input data used in the project.

- **[docs/](https://github.com/fouler44/sql-and-pyspark-sales-warehouse/tree/main/docs)**  
  Includes project documentation and visual assets such as architecture diagrams, data models, and dashboard screenshots used in this README.

- **[scripts/](https://github.com/fouler44/sql-and-pyspark-sales-warehouse/tree/main/scripts)**  
  Stores SQL and PySpark scripts used to build the ETL pipeline, including data ingestion, transformations, and data modeling logic.

- **[tests/](https://github.com/fouler44/sql-and-pyspark-sales-warehouse/tree/main/tests)**  
  Contains validation and testing queries used to verify data quality, integrity, and consistency across the different layers.


This project is based on: 
[SQL Data Warehouse from Scratch by Data with Baraa](https://youtu.be/9GVqKuTVANE?si=RZvC3DB_UuqYm_uX)
