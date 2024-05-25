CREATE TABLE [dbo].[RoomTypes]
(
    [RoomTypeId] INT IDENTITY NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    [PeopleMax] INT NOT NULL DEFAULT 2, 
    [King] INT NOT NULL DEFAULT 0, 
    [Queen] INT NOT NULL DEFAULT 0, 
    [Double] INT NOT NULL DEFAULT 0, 
    [Twin] INT NOT NULL DEFAULT 0, 
    PRIMARY KEY ([RoomTypeId])
)
