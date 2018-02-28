CREATE TABLE [dbo].[CityLimit]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[City_Id] [int] NOT NULL,
[Amount] [int] NULL,
[Period] [date] NULL,
[Quarter] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CityLimit] ADD CONSTRAINT [PK_CityLimit] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CityLimit] ADD CONSTRAINT [FK_CityLimit_City] FOREIGN KEY ([City_Id]) REFERENCES [dbo].[City] ([Id])
GO
