CREATE TABLE [dbo].[Payment] (
    [PaymentId]     INT           NOT NULL,
    [ReservationId] INT           NOT NULL,
    [Reference]     VARCHAR (250) NULL,
    [PaymentType]   VARCHAR (50)  NULL,
    [Amount]        DECIMAL (18)  NULL,
    [Date]          DATETIME NOT NULL
    CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED ([PaymentId] ASC),
    CONSTRAINT [FK_Payment_Reservation] FOREIGN KEY ([ReservationId]) REFERENCES [dbo].[Reservation] ([ReservationId])
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Identificador de la reservacion',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Payment',
    @level2type = N'COLUMN',
    @level2name = N'ReservationId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Referencia del pago',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Payment',
    @level2type = N'COLUMN',
    @level2name = N'Reference'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Tipo de pago',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Payment',
    @level2type = N'COLUMN',
    @level2name = N'PaymentType'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Monto pagado',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Payment',
    @level2type = N'COLUMN',
    @level2name = N'Amount'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fecha del pago',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Payment',
    @level2type = N'COLUMN',
    @level2name = N'Date'