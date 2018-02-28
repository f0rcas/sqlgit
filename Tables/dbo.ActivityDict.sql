CREATE TABLE [dbo].[ActivityDict]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Article_Id] [int] NOT NULL,
[Name] [varchar] (200) COLLATE Cyrillic_General_CI_AS NULL,
[Launch] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActivityDict] ADD CONSTRAINT [PK_ActivityDict1] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActivityDict] ADD CONSTRAINT [FK_ActivityDict_Article] FOREIGN KEY ([Article_Id]) REFERENCES [dbo].[Article] ([Id])
GO
