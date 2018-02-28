CREATE TABLE [dbo].[Activity]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[City_Id] [int] NOT NULL,
[Status] [bit] NULL,
[Amount] [int] NOT NULL,
[Date_Start] [date] NOT NULL,
[Date_End] [date] NULL,
[ActivityDict_id] [int] NULL,
[Launch] [bit] NULL,
[LaunchDate] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Activity] ADD CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Activity] ADD CONSTRAINT [FK_Activity_ActivityDict1] FOREIGN KEY ([ActivityDict_id]) REFERENCES [dbo].[ActivityDict] ([Id])
GO
ALTER TABLE [dbo].[Activity] ADD CONSTRAINT [FK_Activity_City] FOREIGN KEY ([City_Id]) REFERENCES [dbo].[City] ([Id])
GO
