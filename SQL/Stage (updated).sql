create database Stage_
go 

use Stage_
go

--drop database Stage_

CREATE TABLE [Case_Details_Stage] (
	[ID] int IDENTITY(1, 1) NOT NULL,
    [ObjectId] float not null,
    [row_id] float not null,
    [date_reported] nvarchar(255) not null,
    [health_region] nvarchar(255) not null,
    [age_group] nvarchar(255) not null,
    [gender] nvarchar(255) not null,
    [exposure] nvarchar(255) not null,
    [case_status] nvarchar(255) not null,
    [province] nvarchar(255) not null,
)
--drop table Case_Details_Stage
create table [Public_Health_Units_Group_Stage](
	[ID] int IDENTITY(1, 1) NOT NULL,
	[PHU_Group] nvarchar(255),
	[PHU_City] nvarchar(255),
	[PHU_region] nvarchar(255),
)
--drop table [Public_Health_Units_Group_Stage]

CREATE TABLE [Public_Health_Units_Stage] (
	[ID] int IDENTITY(1, 1) NOT NULL,
	[PHU_ID] float,
    [Reporting_PHU] nvarchar(255) ,
    [Reporting_PHU_Address] nvarchar(255),
    [Reporting_PHU_City] nvarchar(255),
    [Reporting_PHU_Postal_Code] nvarchar(255),
    [Reporting_PHU_Website] nvarchar(255) ,
    [Reporting_PHU_Latitude] float,
    [Reporting_PHU_Longitude] float
)
--drop table [Public_Health_Units_Stage]

CREATE TABLE [Ongoing_Outbreaks_Stage] (
	[ID] int IDENTITY(1, 1) NOT NULL,
    [date] datetime,
    [phu_num] int,
    [outbreak_group] nvarchar(255),
    [number_ongoing_outbreaks] float,
)
--drop table [Ongoing_Outbreaks_Stage]

CREATE TABLE [Vaccine_By_Age_Stage] (
	[ID] int IDENTITY(1, 1) NOT NULL,
    [Date] nvarchar(255),
    [PHU ID] int,
    [Agegroup] nvarchar(255),
    [At least one dose_cumulative] float,
    [Second_dose_cumulative] float,
    [fully_vaccinated_cumulative] nvarchar(255),
    [third_dose_cumulative] nvarchar(255),
)
--drop table [Vaccine_By_Age_Stage] 

CREATE TABLE [Case_Report_Stage] (
	[ID] int IDENTITY(1, 1) NOT NULL,
    [Outcome] nvarchar(255),
    [Age] nvarchar(255),
    [Gender] nvarchar(255),
    [Reporting PHU] nvarchar(255),
    [SpecimenDate] nvarchar(255),
    [CaseReported Date] datetime,
    [PHUCity] nvarchar(255),
    [TestReported Date] datetime,
    [CaseAcquisition info] nvarchar(255),
    [AccurateEpisode Dt] nvarchar(255),
    [PHU Address] nvarchar(255),
    [PHU Website] nvarchar(255),
    [OutbreakRelated] nvarchar(255),
    [PHU Latitude] float,
    [PHU Longitude] float,
    [PHU Postal Code] nvarchar(255),
)
--drop table [Case_Report_Stage]

--delete from [Case_Report_Stage]
--delete from [Ongoing_Outbreaks_Stage]
--delete from [Vaccine_By_Age_Stage] 
--delete from [Case_Details_Stage]
--delete from [Public_Health_Units_Group_Stage]
--delete from [Public_Health_Units_Stage]





