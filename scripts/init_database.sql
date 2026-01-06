


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
