CREATE TABLE [dbo].[Room] (
    [RoomId]    INT          NOT NULL,
    [Name]      VARCHAR (50) NOT NULL,
    [Type]      VARCHAR (50) NOT NULL,
    [Status]    INT          NOT NULL,
    [PriceBase] DECIMAL (18) NOT NULL,
    CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED ([RoomId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1=available, 2=occupied', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Room', @level2type = N'COLUMN', @level2name = N'Status';

