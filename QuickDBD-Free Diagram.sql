-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3KXuoS
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Child] (
    [Child_ID] integer(10)  NOT NULL ,
    [Name] varchar(255)  NOT NULL ,
    [Age] integer(10)  NOT NULL ,
    [Birthdate] date  NOT NULL ,
    [Allergies] varchar(255)  NOT NULL ,
    [Special_Instructions] varchar(255)  NOT NULL ,
    [Parent_Name] varchar(255)  NOT NULL ,
    [Drop_Off_Time] integer(10)  NOT NULL ,
    [Pick_Up_Time] integer(10)  NOT NULL ,
    CONSTRAINT [PK_Child] PRIMARY KEY CLUSTERED (
        [Child_ID] ASC
    )
)

CREATE TABLE [Parent] (
    [Name] varchar(255)  NOT NULL ,
    [Street] varchar(255)  NOT NULL ,
    [City] varchar(255)  NOT NULL ,
    [Zip] integer(10)  NOT NULL ,
    [Phone] integer(10)  NOT NULL ,
    [Child_name] varchar(255)  NOT NULL ,
    [Co-Parent] varchar(255)  NOT NULL ,
    [Car_Make] varchar(255)  NOT NULL ,
    [Car_Model] varchar(255)  NOT NULL ,
    [Car_Color] varchar(255)  NOT NULL ,
    [License_Plate_Number] integer(10)  NOT NULL ,
    [Driver_License_Number] integer(10)  NOT NULL 
)

CREATE TABLE [Satff] (
    [Staff_ID] integer(10)  NOT NULL ,
    [Name] varchar(255)  NOT NULL ,
    [Street] varchar(255)  NOT NULL ,
    [City] varchar(255)  NOT NULL ,
    [Zip] integer(10)  NOT NULL ,
    [Children_Responsible_for] varchar(255)  NOT NULL ,
    [Pay_Rate] integer(10)  NOT NULL ,
    CONSTRAINT [PK_Satff] PRIMARY KEY CLUSTERED (
        [Staff_ID] ASC
    )
)

CREATE TABLE [School Supplies] (
    [Child_ID] integer(10)  NOT NULL ,
    [Books] varchar(255)  NOT NULL ,
    [Technology] varchar(255)  NOT NULL ,
    [Pens] varchar(255)  NOT NULL ,
    [Pencils] varchar(255)  NOT NULL ,
    [Crayons] varchar(255)  NOT NULL ,
    CONSTRAINT [PK_School Supplies] PRIMARY KEY CLUSTERED (
        [Child_ID] ASC
    )
)

ALTER TABLE [Parent] WITH CHECK ADD CONSTRAINT [FK_Parent_Child_name] FOREIGN KEY([Child_name])
REFERENCES [Child] ([Parent_Name])

ALTER TABLE [Parent] CHECK CONSTRAINT [FK_Parent_Child_name]

ALTER TABLE [Satff] WITH CHECK ADD CONSTRAINT [FK_Satff_Children_Responsible_for] FOREIGN KEY([Children_Responsible_for])
REFERENCES [Child] ([Child_ID])

ALTER TABLE [Satff] CHECK CONSTRAINT [FK_Satff_Children_Responsible_for]

ALTER TABLE [School Supplies] WITH CHECK ADD CONSTRAINT [FK_School Supplies_Child_ID] FOREIGN KEY([Child_ID])
REFERENCES [Child] ([Name])

ALTER TABLE [School Supplies] CHECK CONSTRAINT [FK_School Supplies_Child_ID]

COMMIT TRANSACTION QUICKDBD