CREATE TABLE [dbo].[Guest] (
    [GuestId]        INT  IDENTITY NOT NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [LastName]       VARCHAR (255) NOT NULL,
    [SecondLastName] VARCHAR (255) NULL,
    [Email]          VARCHAR (255) NULL,
    [Phone]          VARCHAR (15)  NOT NULL,
    CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED ([GuestId] ASC)
);

