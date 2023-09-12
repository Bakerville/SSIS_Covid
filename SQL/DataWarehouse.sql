drop database Covid_19_DW

create database Covid_19_DW
go

use Covid_19_DW
go

create table PHU
(
	ID int  IDENTITY(1,1),
	PHU_ID INT not null,
	PHU_Name NVARCHAR(100),
	Address NVARCHAR(MAX),
	City NVARCHAR(100),
	Postal_Code nvarchar(255),
	Website nvarchar(255),
)

create table PHU_Group
(
	ID INT identity(1,1),
	PHU_City NVARCHAR(MAX),
	PHU_Group NVARCHAR(MAX),
	PHU_Name NVARCHAR(MAX)
)

create table Calendar
(
	ID INT identity(1,1),
	Date datetime,
)

create table Reported_Cases
(
	ID INT identity(1,1),
	Age_Group_ID INT,
	Gender NVARCHAR(10),
	PHU_ID INT,
	Province NVARCHAR(100),
	Exposure_ID INT,
	Case_Status NVARCHAR(100),
	Reported_Date Datetime
)

create table Age
(
	ID INT identity(1,1),
	Age_Group nvarchar(50),
	Others nvarchar(10)
)

insert into [Age] values('<20', '<20')
insert into [Age] values('20-29', '20s')
insert into [Age] values('30-39', '30s')
insert into [Age] values('40-49', '40s')
insert into [Age] values('50-59', '50s')
insert into [Age] values('60-69', '60s')
insert into [Age] values('70-79', '70s')
insert into [Age] values('80+', '>80')
insert into [Age] values('Not Reported', '<20')


create table [Exposure]
(
	ID int identity,
	Exposure nvarchar(50),
)

insert into Exposure values('Closed Contact')
insert into Exposure values('Travel-Related')
insert into Exposure values('Outbreak')
insert into Exposure values('Not Reported')
insert into Exposure values('NO KNOWN EPI LINK')
insert into Exposure values('MISSING INFORMATION')
insert into Exposure values('UNSPECIFIED EPI LINK')



