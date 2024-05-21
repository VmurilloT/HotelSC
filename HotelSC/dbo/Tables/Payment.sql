CREATE TABLE [dbo].[Payment] (
    [PaymentId]     INT           NOT NULL,
    [ReservationId] INT           NOT NULL,
    [Reference]     VARCHAR (250) NULL,
    [PaymentType]   VARCHAR (50)  NULL,
    [Amount]        DECIMAL (18)  NULL,
    CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED ([PaymentId] ASC),
    CONSTRAINT [FK_Payment_Reservation] FOREIGN KEY ([ReservationId]) REFERENCES [dbo].[Reservation] ([ReservationId])
);

