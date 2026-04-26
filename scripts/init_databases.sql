

USE master;
go

if exists (select 1 from sys.databases where name = 'DataWarehouse')
begin
	alter database DataWarehouse set single_user with rollback immediate;
	drop database DataWarehouse;
end
go

-- Creating database "DataWarehouse"
create database DataWarehouse;
go
Use DataWarehouse;
go

-- Creating schemas
create schema bronze;
go
create schema silver;
go
create schema gold;
