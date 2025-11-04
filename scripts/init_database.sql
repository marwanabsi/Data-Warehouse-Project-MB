/*
#########################################
Script Name: Create Database and Schemas
#########################################
 Purpose:
    This script creates a new database named **'DataWarehouse'**.
    If the database already exists, it will be **dropped and recreated**.
    It also sets up the following schemas:
        - bronze  → Raw data (ingestion layer)
        - silver  → Cleaned & standardized data
        - gold    → Business-ready analytical data

⚠️ WARNING:
    Running this script will **DROP the existing 'DataWarehouse' database** if found.
    All existing data inside it will be **permanently deleted**.
    Proceed with caution and ensure you have proper backups before execution.
##############################################################################################
*/

USE master;
GO

-------------------------------------------------------------
--  Drop Existing Database if It Already Exists
-------------------------------------------------------------
-- Check if a database named 'DataWarehouse' already exists 
--           in the SQL Server system catalog (sys.databases).
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    --##########################################################
    -- Notify the user in the Messages window that the database exists and will be dropped.
  PRINT 'Database ''DataWarehouse'' already exists. Dropping...';
    
    --##########################################################
    -- Force the database into SINGLE_USER mode (disconnect all current sessions immediately) and roll back any open transactions.
    -- ⚠️ This ensures there are no active connections preventing DROP.
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    
    --##########################################################
    -- Permanently delete the existing database.
    -- ⚠️ WARNING: This ⚠️⚠️removes the entire database⚠️⚠️, including all tables, data, and metadata.
    DROP DATABASE DataWarehouse;
    
    --##########################################################
    -- Confirm that the database has been dropped successfully.
    PRINT 'Database ''DataWarehouse'' dropped successfully.';
END;
GO  -- 'GO' signals the end of the batch The SQL Server Management Studio (SSMS) executes everything above before moving on.


--##########################################################
-- Create the new 'DataWarehouse' database
--##########################################################
CREATE DATABASE DataWarehouse;
PRINT 'Database ''DataWarehouse'' created successfully.';
GO

--##########################################################
-- Create Schemas: bronze, silver, gold
--##########################################################
USE DataWarehouse;
GO

CREATE SCHEMA bronze;
PRINT 'Schema ''bronze'' created successfully.';

CREATE SCHEMA silver;
PRINT 'Schema ''silver'' created successfully.';

CREATE SCHEMA gold;
PRINT 'Schema ''gold'' created successfully.';
GO
--##########################################################
-- Summary
PRINT ' Database and schemas created successfully.';
PRINT '--------------------------------------------------';
PRINT ' Database:  DataWarehouse';
PRINT ' Schemas:   bronze | silver | gold';
PRINT '--------------------------------------------------';
