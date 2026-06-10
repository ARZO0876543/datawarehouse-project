USE master;
GO

-- Drop and recreate the'Sales_warehouse' database

IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'Sales_warehouse' )
BEGIN 
  ALTER DATABASE Sales_warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Sales_warehouse;
END;
GO

-- create the 'Sales_warehouse' database
CREATE DATABASE  Sales_warehouse;
GO


USE Sales_warehouse;
GO 

-- Create Schemas
CREATE SCHEMA Bronze;
GO
  
CREATE SCHEMA Silver;
GO
  
CREATE SCHEMA Gold;
GO
