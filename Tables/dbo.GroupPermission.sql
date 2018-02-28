CREATE TABLE [dbo].[GroupPermission]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[GroupId] [int] NULL,
[PermId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GroupPermission] ADD CONSTRAINT [PK_GroupPermission] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GroupPermission] ADD CONSTRAINT [FK_GroupPermission_GroupNamePermission] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[GroupNamePermission] ([Id])
GO
ALTER TABLE [dbo].[GroupPermission] ADD CONSTRAINT [FK_GroupPermission_PermissionDict] FOREIGN KEY ([PermId]) REFERENCES [dbo].[PermissionDict] ([Id])
GO
