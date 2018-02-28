CREATE TABLE [dbo].[User]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Login] [varchar] (100) COLLATE Cyrillic_General_CI_AS NULL,
[Name] [varchar] (100) COLLATE Cyrillic_General_CI_AS NULL,
[ExternalId] [int] NULL,
[GroupId] [int] NULL,
[Hidearch] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK_User1] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [FK_User_GroupNamePermission] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[GroupNamePermission] ([Id])
GO
