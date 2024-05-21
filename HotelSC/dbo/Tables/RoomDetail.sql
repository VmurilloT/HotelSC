CREATE TABLE [dbo].[RoomDetail] (
    [RoomDetailId] INT NOT NULL,
    [RoomId]       INT NOT NULL,
    [ServiceId]    INT NULL,
    CONSTRAINT [PK_RoomDetail] PRIMARY KEY CLUSTERED ([RoomDetailId] ASC),
    CONSTRAINT [FK_RoomDetail_Room] FOREIGN KEY ([RoomId]) REFERENCES [dbo].[Room] ([RoomId]),
    CONSTRAINT [FK_RoomDetail_Service] FOREIGN KEY ([ServiceId]) REFERENCES [dbo].[Service] ([ServiceId])
);

