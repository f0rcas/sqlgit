CREATE TABLE [dbo].[Permission]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[UserId] [int] NOT NULL,
[GroupPermId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Permission] ADD CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
