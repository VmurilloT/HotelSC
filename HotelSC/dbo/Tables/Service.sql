CREATE TABLE [dbo].[Service] (
    [ServiceId]   INT           NOT NULL,
    [Description] VARCHAR (255) NOT NULL,
    [Status]      BIT           NOT NULL,
    CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED ([ServiceId] ASC)
);

