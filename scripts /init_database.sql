/*
===============================================================================
Create Database and Schemas
===============================================================================

Script Purpose:
    This script creates a new database named 'datawarehouse' after checking 
    if it already exists. If the database exists, it is dropped and recreated. 
    Additionally, the script sets up three schemas within the database: 
    'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'datawarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.

Notes (PostgreSQL Specific):
    - This script is intended for PostgreSQL.
    - Database existence checks use PostgreSQL system catalogs.
    - Schema creation uses: CREATE SCHEMA IF NOT EXISTS.
===============================================================================
*/


-- Create the 'DataWarehouse' DB
DROP DATABASE IF EXISTS DataWarehouse;
CREATE DATABASE DataWarehouse;

-- Create schemas for medallion architecture
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
