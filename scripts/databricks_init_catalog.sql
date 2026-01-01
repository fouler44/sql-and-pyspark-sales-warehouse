/*
- Databricks Unity Catalog initialization
- This script must be executed in a Databricks SQL Warehouse or Notebook
- It will NOT work in standard SQL engines
- Running this script will drop the entire catalog if it exists.
  Proceed with caution before and ensure you have proper backups before running this script.
*/

-- Drop the catalog if exists
DROP CATALOG IF EXISTS sales_project CASCADE;

-- Create the catalog
CREATE CATALOG IF NOT EXISTS sales_project;

-- Create the schemas
CREATE SCHEMA IF NOT EXISTS sales_project.bronze;
CREATE SCHEMA IF NOT EXISTS sales_project.silver;
CREATE SCHEMA IF NOT EXISTS sales_project.gold;
