CREATE TABLE [dbo].[Comment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Text] [text] COLLATE Cyrillic_General_CI_AS NULL,
[Activity_Id] [int] NULL,
[Date] [datetime] NULL,
[UserId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment] ADD CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment] ADD CONSTRAINT [FK_Comment_Activity] FOREIGN KEY ([Activity_Id]) REFERENCES [dbo].[Activity] ([Id])
GO
ALTER TABLE [dbo].[Comment] ADD CONSTRAINT [FK_Comment_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
GO
