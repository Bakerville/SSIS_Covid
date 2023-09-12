create database DataSource 
go 

use DataSource
go

CREATE TABLE [Case_Details] (
    [ObjectId] float not null,
    [row_id] float not null,
    [date_reported] nvarchar(255) not null,
    [health_region] nvarchar(255) not null,
    [age_group] nvarchar(255) not null,
    [gender] nvarchar(255) not null,
    [exposure] nvarchar(255) not null,
    [case_status] nvarchar(255) not null,
    [province] nvarchar(255) not null,
	[last_updated] datetime ,
	[created_time] datetime
)
--drop table Case_Details
create table [Public_Health_Units_Group](
	[PHU_Group] nvarchar(255) not null,
	[PHU_City] nvarchar(255)not null,
	[PHU_region] nvarchar(255)not null,
	[last_updated] datetime,
	[created_time] datetime
)
--drop table [Public_Health_Units_Group]

CREATE TABLE [Public_Health_Units] (
	[PHU_ID] float,
    [Reporting_PHU] nvarchar(255) ,
    [Reporting_PHU_Address] nvarchar(255),
    [Reporting_PHU_City] nvarchar(255),
    [Reporting_PHU_Postal_Code] nvarchar(255),
    [Reporting_PHU_Website] nvarchar(255) ,
    [Reporting_PHU_Latitude] float,
    [Reporting_PHU_Longitude] float,
	[last_updated] datetime,
    [created_time] datetime
)
--drop table [Public_Health_Units]

CREATE TABLE [Ongoing_Outbreaks] (
    [date] datetime,
    [phu_num] float,
    [outbreak_group] nvarchar(255),
    [number_ongoing_outbreaks] float,
	[last_updated] datetime,
    [created_time] datetime
)
--drop table [Ongoing_Outbreaks]

CREATE TABLE [Vaccine_By_Age] (
    [Date] nvarchar(255),
    [PHU ID] float,
    [Agegroup] nvarchar(255),
    [At least one dose_cumulative] float,
    [Second_dose_cumulative] float,
    [fully_vaccinated_cumulative] nvarchar(255),
    [third_dose_cumulative] nvarchar(255),
	[last_updated] datetime,
    [created_time] datetime
)
--drop table [Vaccine_By_Age] 

CREATE TABLE [Case_Report] (
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
	[last_updated] datetime,
    [created_time] datetime
)
--drop table [Case_Report]

delete from [Case_Report]
delete from [Vaccine_By_Age] 
delete from [Case_Details]
delete from [Public_Health_Units_Group]
delete from [Public_Health_Units]
delete from [Ongoing_Outbreaks] 


