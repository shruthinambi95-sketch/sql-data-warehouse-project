/* Create database and Schemas
Script Purpose: 
  This script creates a new database name "Data_Ware_House" after checking if it already exists. 
  If the database exists, it is dropped and recreated.
  Additionally, the script sets up three schemas within the database "bronze", "silver" and "gold".

Warning:
  Runnning this script will drop the entire "Data_Ware_House" database if it exists. 
  All data in the database will be permanentlu deleted. 
  Proceed with caution and ensure you have proper backups before running this scrip.
*/

IF EXISTS (SELECT 1 from sys.databases Where name= 'Data_Ware_House')
  BEGIN
    ALTER DATABASE Data_Ware_House SET SINGLE_USER with ROLLBACK IMMEDIATE;
    DROP DATABASE Data_Ware_House;
END;
GO

CREATE database Data_Ware_House;
USE Data_Ware_House;
CREATE SCHEMA bronze;
GO
Create Schema silverr;
GO
Create Schema gold;
GO
