CREATE TABLE [dbo].[Article]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (50) COLLATE Cyrillic_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Article] ADD CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
