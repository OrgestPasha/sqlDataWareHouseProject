-- Switch to master database to perform administrative tasks
USE master;
GO

-- Check if the DataWarehouse database already exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    -- Set database to SINGLE_USER mode to force disconnect all users
    ALTER DATABASE DataWarehouse 
    SET SINGLE_USER 
    WITH ROLLBACK IMMEDIATE;

    -- Drop the existing database
    DROP DATABASE DataWarehouse;
END
GO

-- Create a fresh DataWarehouse database
CREATE DATABASE DataWarehouse;
GO

-- Switch context to the newly created database
USE DataWarehouse;
GO

-- Create schemas to organize data layers
-- Bronze: raw ingested data
CREATE SCHEMA bronze;
GO

-- Silver: cleaned and transformed data
CREATE SCHEMA silver;
GO

-- Gold: curated, business-ready data
CREATE SCHEMA gold;
GO
