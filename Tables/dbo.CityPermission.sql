CREATE TABLE [dbo].[CityPermission]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[UserId] [int] NOT NULL,
[CityId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CityPermission] ADD CONSTRAINT [PK_CityPermission] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CityPermission] ADD CONSTRAINT [FK_CityPermission_City] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[CityPermission] ADD CONSTRAINT [FK_CityPermission_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
GO
