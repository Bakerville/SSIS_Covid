create database Metadata_
go 

use Metadata_
go  

create table Data_Flow (
	ID int primary key,
	table_name varchar(50),
	created_time datetime,
	last_updated datetime
)
--drop table Data_Flow

insert into Data_Flow values(1, 'Case_Details', null, null)
insert into Data_Flow values(2, 'Case_Report', null, null)
insert into Data_Flow values(3, 'Ongoing_Outbreaks', null, null)
insert into Data_Flow values(4, 'Public_Health_Units', null, null)
insert into Data_Flow values(5, 'Public_Health_Units_Group', null, null)
insert into Data_Flow values(6, 'Vaccine_By_Age', null, null)

create table DDS (
	ID int primary key,
	table_name varchar(50),
	created_time datetime,
	last_updated datetime
)

--drop table DDS
