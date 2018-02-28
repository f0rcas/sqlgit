CREATE TABLE [dbo].[City]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (50) COLLATE Cyrillic_General_CI_AS NULL,
[ExternalId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[City] ADD CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
