CREATE TABLE [dbo].[PermissionDict]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (50) COLLATE Cyrillic_General_CI_AS NULL,
[Code] [varchar] (10) COLLATE Cyrillic_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PermissionDict] ADD CONSTRAINT [PK_PermissionDict] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
