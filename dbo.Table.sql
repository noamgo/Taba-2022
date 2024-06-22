CREATE TABLE [dbo].[usersTbl]
(
    [uName] NVARCHAR(15) NOT NULL, 
    [fName] NVARCHAR(15) NOT NULL, 
    [lName] NVARCHAR(15) NOT NULL, 
    [email] NVARCHAR(30) NOT NULL, 
    [YearBorn] INT NOT NULL, 
    [gender] NVARCHAR(6) NOT NULL, 
    [prefix] NVARCHAR(3) NOT NULL, 
    [phone] NVARCHAR(7) NOT NULL, 
    [city] NVARCHAR(15) NOT NULL, 
    [hob1] NCHAR(1) NULL, 
    [hob2] NCHAR(1) NULL, 
    [hob3] NCHAR(1) NULL, 
    [hob4] NCHAR(1) NULL, 
    [hob5] NCHAR(1) NULL, 
    [pw] NVARCHAR(10) NOT NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([uName])

)
