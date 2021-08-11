CREATE TABLE [dbo].[Cart] (
    [CartProductId] INT          NOT NULL,
    [Username]      VARCHAR (30) NULL,
    [Quantity]      NCHAR (10)   NULL,
    [Price]         REAL         NULL,
    CONSTRAINT [FK_Cart_Login] FOREIGN KEY ([Username]) REFERENCES [dbo].[Login] ([Username]),
    CONSTRAINT [FK_Cart_Products] FOREIGN KEY ([CartProductId]) REFERENCES [dbo].[Products] ([ProductId])
);

