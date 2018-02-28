CREATE TABLE [dbo].[Files]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (500) COLLATE Cyrillic_General_CI_AS NULL,
[Date] [date] NULL,
[Activity_Id] [int] NULL,
[FileType] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Files] ADD CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
