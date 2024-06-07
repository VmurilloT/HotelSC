CREATE TABLE [dbo].[Reservation] (
    [ReservationId]   INT          NOT NULL IDENTITY,
    [RoomId]          INT          NOT NULL,
    [CheckIn]         DATE     NOT NULL,
    [CheckOut]        DATE     NOT NULL,
    [ReservationDate] DATE     NOT NULL,
    [Price]           DECIMAL (18) NOT NULL,
    [Status]          NCHAR (10)   NULL,
    [GuestId]         INT          NULL,
    [NumberOfGuests]  INT          NULL,
    CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED ([ReservationId] ASC),
    CONSTRAINT [FK_Reservation_Guest] FOREIGN KEY ([GuestId]) REFERENCES [dbo].[Guest] ([GuestId]),
    CONSTRAINT [FK_Reservation_Room] FOREIGN KEY ([RoomId]) REFERENCES [dbo].[Room] ([RoomId])
);

