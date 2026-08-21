/* 
==========================================================================
Create Database and Schemas
==========================================================================
Script Purpose:
    This Script create a new database named 'BigMart' after checking if it already exits.
    If the Database exits, it is droped and recreated. Additionally, the script sets up two schemas within the Database: 'Silver', and 'Gold'.

WARNING:
    Runing this script will drop the entire 'BigMart' database if it exits.
    All data in the database will be permanetly deleted.
    Proceed with caution and ensure you have proper backups before running this script.
*/

USE master;
GO

--Drop and recreate the 'BigMart' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'BigMart')
BEGIN
  ALTER DATABASE BigMart SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE BigMart;
END;
GO

---Create the 'BigMart' database
CREATE DATABASE BigMart;
GO

USE BigMart;
GO

---To Create Schema 
CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
